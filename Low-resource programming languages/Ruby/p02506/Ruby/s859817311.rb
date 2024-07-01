# coding: utf-8

count = 0
main = gets.chomp
main.upcase!
loop do
  input = gets.chomp
  input.upcase!
  break if input =~ /END_OF_TEXT/
  word = input.split(" ")
  word.each do |item|
    count += 1 if item == main
  end
end
puts count