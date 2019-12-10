class String
  def leetspeak()
    new_array = []
    input_array = self.downcase().split("")
    #also typed:  input_array = self.split("") but "self" is implicit in ruby
    input_array.each_with_index do |letter, index|
      case letter
      when "o"
        new_array.push("0")
      when "i"
        new_array.push("1")
      when "e"
        new_array.push("3")
      when "a"
        new_array.push("4")
      when " "
        new_array.push("%")
      when "s"
        theIndex = index - 1
        if new_array[theIndex] == "%"
          new_array.push("s")
        else
          new_array.push("5")
        end
      else
        new_array.push(letter)
      end
    end
    new_array.each_with_index do |letter, index|
      if (letter == "%")
        new_array[index] = " "
      end
    end
    new_string = new_array.join("")
    words_array = new_string.split(" ")
    output_array = []
    words_array.each do |word|
      output_array.push(word.capitalize())
    end
    output_string = output_array.join(" ")
    return output_string
  end
end
