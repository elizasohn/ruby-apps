class String
  def clock_angle()
    input_array = split(":")
    hourAngle = ((input_array[0].to_f() % 12) * 30) # adds angle of hours
    hourAngle = hourAngle + ((input_array[1].to_f() % 60) * 0.5) # adds angle of minutes
    minuteAngle = ((input_array[1].to_f() % 60) * 6)
    difference = (hourAngle - minuteAngle).abs

    if (difference > 180)
      difference = (minuteAngle - hourAngle).abs
    end
    return difference
  end
end
