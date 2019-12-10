class String
  def scrabble()
    one_point_letters = ["a","e","i","o","u","l","n","r","s","t"]
    two_point_letters = ["d","g"]
    three_point_letters = ["b","c","m","p"]
    four_point_letters = ["f","h","v","w","y"]
    five_point_letters = ["k"]
    eight_point_letters = ["j","x"]
    ten_point_letters = ["q","z"]

    letters = self.downcase.split("")
    score = 0
    letters.each do |letter|
      if (one_point_letters.include?(letter))
        score += 1
      elsif (two_point_letters.include?(letter))
        score += 2
      elsif (three_point_letters.include?(letter))
        score += 3
      elsif (four_point_letters.include?(letter))
        score += 4
      elsif (five_point_letters.include?(letter))
        score += 5
      elsif (eight_point_letters.include?(letter))
        score += 8
      elsif (ten_point_letters.include?(letter))
        score += 10
      end # if -elsif etc
    end # letters.each do |letter|
    return score
  end # def scrabble()
end # class String
