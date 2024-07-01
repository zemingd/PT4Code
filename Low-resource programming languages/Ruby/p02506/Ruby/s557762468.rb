# coding: utf-8

count = 0
main = gets.chomp
loop do
  input = gets
  break if input =~ /END_OF_TEXT/
  word = input.split(" ")
  word.each do |item|
    count += 1 if item == main
  end
end
puts count