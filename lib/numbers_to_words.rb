class String
  def to_word()
    single_digits = Hash.new()
    single_digits.store("0","")
    single_digits.store("1", "one")
    single_digits.store("2", "two")
    single_digits.store("3", "three")
    single_digits.store("4", "four")
    single_digits.store("5", "five")
    single_digits.store("6", "six")
    single_digits.store("7", "seven")
    single_digits.store("8", "eight")
    single_digits.store("9", "nine")

    teens = Hash.new()
    teens.store("1","eleven")
    teens.store("2","twelve")
    teens.store("3","thirteen")
    teens.store("4","fourteen")
    teens.store("5","fifteen")
    teens.store("6","sixteen")
    teens.store("7","seventeen")
    teens.store("8","eighteen")
    teens.store("9","nineteen")

    tens_digits = Hash.new()
    tens_digits.store("0","")
    tens_digits.store("1","ten")
    tens_digits.store("2","twenty")
    tens_digits.store("3","thirty")
    tens_digits.store("4","fourty")
    tens_digits.store("5","fifty")
    tens_digits.store("6", "sixty")
    tens_digits.store("7","seventy")
    tens_digits.store("8","eighty")
    tens_digits.store("9","ninety")
    input = self.split("").reverse

    powers_of_ten = Hash.new()
    powers_of_ten.store(0,"")
    powers_of_ten.store(1,"thousand, ")
    powers_of_ten.store(2,"million, ")
    powers_of_ten.store(3,"billion, ")
    powers_of_ten.store(4,"trillion, ")
    powers_of_ten.store(5,"quadrillion,")
    powers_of_ten.store(6,"quintillion,")
    powers_of_ten.store(7,"sextillion,")
    powers_of_ten.store(8,"septillion,")
    powers_of_ten.store(9,"octillion,")
    powers_of_ten.store(10,"nonillion,")
    powers_of_ten.store(11,"decillion,")
    powers_of_ten.store(12,"undecillion,")
    powers_of_ten.store(13,"duodecillion,")
    powers_of_ten.store(14,"tredicillion,")
    powers_of_ten.store(15,"quattuordecillion,")
    powers_of_ten.store(16,"quindecillion,")
    powers_of_ten.store(17,"sexdecillion,")
    powers_of_ten.store(18,"septendecillion,")
    powers_of_ten.store(19,"octodecillion,")
    powers_of_ten.store(20,"novemdecillion,")
    powers_of_ten.store(21,"vigintillion,")
    output = []
    is_a_teen = false

    input.each_with_index do |number, index|
      digit = (index % 3)
      thousands_place = (index / 3).floor
      if (digit == 0)
        indexplusOne = index+1
        indexplusTwo = index+2
        if ((!(number == "0")) | (!(input[indexplusOne] == "0")) | (!(input[indexplusTwo] == "0")))
          output.push(powers_of_ten.fetch(thousands_place))
        end
        if ((input[indexplusOne] == "1") & !(number == "0"))
          is_a_teen = true
          output.push(teens.fetch(number))
        else
          output.push(single_digits.fetch(number))
        end
      elsif (digit == 1)
        if (is_a_teen)
          is_a_teen = false
        else
          output.push(tens_digits.fetch(number))
        end
      elsif (digit == 2)
        if (!(number == "0"))
          output.push("hundred")
          output.push(single_digits.fetch(number))
        end
      end
    end
    final = []
    output.each do |word|
      if (!(word == ""))
        final.push(word)
      end
    end
    final = final.reverse.join(" ")
    return final
  end
end
