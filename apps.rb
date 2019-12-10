#!/usr/bin/env ruby
# require ('rspec')
require ('./lib/ping_pong')
require ('./lib/title_case')
require ('./lib/leetspeak')
require('./lib/queen_attack')
require ('./lib/clock_angle')


puts("Welcome to our program!")

resume = true
while (resume)
  puts("Select a function:")
  puts("1: Ping Pong")
  puts("2: Title Case")
  puts("3: L33t 5p34K")
  puts("4: Queen Attack")
  puts("5: Clock Angle")
  function = gets.chomp

  case function
  when "1"
    puts("Ping Pong App!")
    puts("Please enter a number:")
    input = gets.chomp.to_i
    puts(ping_pong(input).join(" "))

  when "2"
    puts("Title Case App!")
    puts("Please enter a string: ")
    input = gets.chomp
    puts(title_case(input))
  when "3"
    puts("L33t5P34K 4PP")
    puts("Pl3453 1nput 4 5tr1ng")
    input = gets.chomp
    puts(input.leetspeak)
  when "4"
    puts("Queen Attack App")
    puts("Input the row of the Queen: ")
    qRow = gets.chomp.to_i
    puts("Input the column of the Queen: ")
    qCol = gets.chomp.to_i
    puts("Input the row of the Target Square: ")
    tRow = gets.chomp.to_i
    puts("Input the column of the Target Square: ")
    tCol = gets.chomp.to_i

    output = [qRow,qCol].queen_attack([tRow, tCol])
    if output
      puts("That is a valid move!")
    else
      puts("That is not a valid move!")
    end
  when "5"
    puts("Clock Angle Calculator")
    puts("Input the Current Time")
    puts("HH:MM - ")
    input = gets.chomp
    output = input.clock_angle
    puts("The angle between the Hour and Minute hands is #{output} degrees")
  end
  puts("\n \n Would you like to run another program? Y/N ")
  doResume = gets.chomp
  if doResume == "Y" || doResume == "y"
    resume = true
  else
    resume = false
  end
  puts("Ending Program")
  puts("Good bye.")
end
