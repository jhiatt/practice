class String
  def scrub_string
    array = split("")
    # function is next character a "["
    i = 0
    numbers = ["1","2","3","4","5","6","7","8","9"]
    array.length.times do
      if numbers.include?(array[i])
        x = array[i]
        x = x.to_i
        array[i] = x
      end
        i += 1
    end
    p array
  end

  def decompress(string)
    array = string.scrub_string
    solution = string.disect(array)
    solution = polish(solution)
    p solution
  end

  # def disect(array)
  #   solution = []
  #   solution2 = []
  #   i = 0
  #   until array[i] == nil
  #     x = 1
  #     if array[i].is_a? Integer
  #       x = array[i]
  #       i += 1
  #     elsif array[i] != "[" && array[i] != "]"
  #       solution2 << array[i]
  #       i += 1
  #     end
  #     if array[i] == "["
  #       j = i + 1
  #       until array[j] == "]"
  #         solution << array[j] #push into solution
  #         j += 1
  #         i += 1
  #       end
  #       (x).times do
  #         solution2 << solution
  #       end
  #       solution = []
  #       solution2
  #     end
  #     i += 1
  #   end
  #   solution2
  # end

  def trapp(array, i)
    #i should be the first bracket reached
    trapped = []
    j = i + 1
    p array
    until array[j] == "]"
      if array[j] == "["
        trapp(array, j)
      else
        trapped << array[j]
      end
      j += 1
    end
    p "trapped" 
    p trapped
    return trapped
  end

  def disect_2(array)
    i = 0
    if array[i].is_a? Integer
      x = array[i]
      i += 1
    elsif array[i] != "[" && array[i] != "]"
      solution2 << array[i]
      i += 1
    end
  end

  def polish(array)
    array = array.flatten
    "#{array.join('')}"
  end
end

# String.new.decompress("3[abc]4[ab]c")

# string2 = String.new.decompress("3[abc]4[a3[de]b]c")

string2 = String.new.trapp([4, "[", "a", 3, "[", "d", "e", "]", "b", "]", "c"], 0)
