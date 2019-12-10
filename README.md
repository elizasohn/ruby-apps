# BDD Ruby - Monday

## Created by Lillian Theuma and Veronica Stanley-Katz on 12/9/2019

### Project Description
This project was completed as part of the Epicodus in-class curriculum. The task description was as follows:

#### Ping-Pong

To start off our first week of Ruby, write a Ruby method on the Integer class that takes a number from the user and returns a list of numbers and strings that corresponds to the Ping-Pong solution (i.e., 7.pingpong() returns [1, 2, "ping", 4, "pong", "ping", 7]). This is a little similar to the "Beep Boop" application you constructed back in Intro to Programming.

#### Title Case with BDD

Using the previous lessons as reference, create a Ruby method on the String class that takes a string of word(s) from the user and returns it in title case.

Write plain English versions of your specs first.

Don't be tempted to cut and paste the Title Case code you've seen. Talk through what behaviors need to be built and write tests for each one at a time. Create code to make each pass before moving to the next behavior/spec.

#### L33t5P34K

Leetspeak uses an alternative alphabet of numbers and symbols to replace various letters in words. For example, "leet" becomes "1337" and "Epicodus" might become "3p1c0duz".

Write a Ruby method on the String class that converts a string using some of the rules of Leetspeak:

The letter "e" should be replaced with "3".
The letter "o" should be replaced with "0".
The capital letter "I" (but not the lower case, "i") should be replaced with "1".
All instances of "s" should be replaced with "z" UNLESS it is the first letter of the word.
Here is a sample of input and output

In: "Don't you love these 'String' exercises? I do!"
Out: "D0n't y0u l0ve theze 'String' exercizez? 1 d0!"

#### Queen attack

If you finish the Leetspeak project and have it checked by an instructor, try this one. In chess, a queen can move horizontally, vertically, and diagonally, making it the most powerful piece on the board. If another piece is within its line of sight, the queen can attack it. Make a method that is called on the position on the board of the queen and takes as an argument the position of the other piece. The method should tell whether the queen can attack the other piece.

By creating a test that uses positions where the queen CANNOT attack, the code to analyze horizontal, vertical and diagonal is not yet necessary. For this code to pass, we simply need to run the method and return false. This is the MOST simple behavior which is why it is first. What ultimately becomes your else condition is often the simplest spec to write first.

After you make this pass, write a spec for a queen attacking horizontally, and get it to pass; then one for vertically, and get it to pass; and finally one for diagonally. Remember to refactor or simplify your code, if appropriate. Don't be tempted to write a single test for the true case (e.g., it 'is true if it can attack horizontally or vertically or diagonally') - there are three separate behaviors here for horizontal, vertical, and diagonal. Make a commit after each successful passing test!

#### Clock angle

Time for something a little more complicated. Let's write a method that tells us, given a certain time, the distance between the minute and hour hands on an analog clock. For example, 12 o'clock would return 0º and 6 o'clock would return 180º.

Always return the smaller distance and be as precise as possible. Make sure to think about the object class of the input - all form inputs from params are strings. In order to convert a String to a Float, you need to use the String#to_f() method. Try it out in IRB to get the hang of this new method.

As stated in the prompt from Epicodus, the project objectives are to: https://www.learnhowtoprogram.com/ruby-and-rails/behavior-driven-development-with-ruby/ping-pong-title-case-leetspeak-queen-attack-clock-angle



### Technologies Used
Ruby

### License
This software is licensed under the MIT license.

_Copyright (c) 2019 ** Lillian Theuma and Veronica Stanley-Katz **_
