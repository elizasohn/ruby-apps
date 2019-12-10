def ping_pong(number)
  x = 0
  output = []
  while (x < number)
    x = x + 1
    divby3 = x%3
    divby5 = x%5
    if divby3 == 0
      output.push("ping")
    elsif divby5 == 0
      output.push("pong")
    else
      output.push(x)
    end
  end
  return output
end
