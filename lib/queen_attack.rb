class Array
  def queen_attack(target)
    vertDistance = self[0] - target[0]
    horizontalDistance = self[1] - target[1]
    if (self[1] == target[1]) | (self[0] == target[0]) | (vertDistance.abs() == horizontalDistance.abs())
      return true
    else
      return false
    end
  end
end
