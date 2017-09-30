def decompress(string)
  solution = []
  solution2 = []
  # convert out of string 
  array = string.split("")
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
  i = 0
  until array[i] == nil
    x = 1
    if array[i].is_a? Integer
      x = array[i]
      i += 1
    elsif array[i] != "[" && array[i] != "]"
      solution2 << array[i]
      i += 1
    end
    if array[i] == "["
      j = i + 1
      until array[j] == "]"
        solution << array[j] #push into solution
        j += 1
        i += 1
      end
      (x).times do
        solution2 << solution
      end
      solution = []
      solution2
    end
    i += 1
  end
  p solution2.flatten
  p "#{solution2.join('')}"
end

decompress("3[abc]4[ab]c")



