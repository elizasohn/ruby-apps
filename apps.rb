#!/usr/bin/env ruby
# require ('rspec')
require ('./lib/ping_pong')
require ('./lib/title_case')
require ('./lib/leetspeak')
require('./lib/queen_attack')
require ('./lib/clock_angle')
require('./lib/scrabble')
require('./lib/numbers_to_words')
require('./lib/rolling_cipher')

puts("Welcome to our program!")

resume = true
while (resume)
  puts("Select a function:")
  puts("1: Ping Pong")
  puts("2: Title Case")
  puts("3: L33t 5p34K")
  puts("4: Queen Attack")
  puts("5: Clock Angle")
  puts("6: Scrabble Score Calculator")
  puts("7: Number to word script")
  puts("8: File comparator")
  puts("9: Rolling Cipher Encrypt/Decrypter")
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
  when "6"
    puts("Scrabble Score Calculator")
    puts("Please input a word")
    input = gets.chomp
    output = input.scrabble
    if (output == 1)
      puts("That word is worth 1 point")
    else
      puts("That word is worth #{output} points.")
    end
  when "7"
    puts("Number to word Calculator")
    puts("Please input a number\n")
    input = gets.chomp
    output  = input.to_word()
    puts("Your number is #{output} \n")
  when "8"
    puts("File Comparator")
    puts("Name of first file:")
    file_a = gets.chomp
    puts("Name of second file:")
    file_b = gets.chomp

    mode = "r"

    file_a_content = File.read(file_a)
    file_b_content = File.read(file_b)

    file_a_score = file_a_content.scrabble()
    file_b_score = file_b_content.scrabble()

    puts("#{file_a}: #{file_a_score} points")
    puts("#{file_b}: #{file_b_score} points")
    if (file_a_score > file_b_score)
      puts("File A has a higher score!")
    elsif (file_a_score == file_b_score)
      puts("They have the same score!")
    else
      puts("File B has a higher score!")
    end
    if (file_a_content == file_b_content)
      puts("They are the same file!")
    end
  when "9"
    puts("Rolling Key Encryption program")
    puts("Please enter the start point of your key")
    key_start = gets.chomp
    puts("Please enter the end point of your key")
    key_end = gets.chomp
    puts("Would you like to Encrypt(a) or Decrypt(b)?")
    choice = gets.chomp
    if (choice == "a")
      puts("Which file would you like to enrypt")
      read_file = gets.chomp
      puts("Which file would you like to write the encrypted data too?")
      puts("WARNING: This will overwrite files that already exist. We are not responsible for any losses if you give a current file as this name")
      write_file = gets.chomp
      encrypt(read_file, write_file, key_start.to_i, key_end.to_i, 1)
    elsif (choice == "b")
      puts("Which file would you like to decrypt")
      read_file = gets.chomp
      puts("Which file would you like to write the decrypted data too?")
      puts("WARNING: This will overwrite files that already exist. We are not responsible for any losses if you give a current file as this name")
      write_file = gets.chomp
      encrypt(read_file, write_file, key_start.to_i, key_end.to_i, -1)
    end

    puts("Operation Complete")
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
