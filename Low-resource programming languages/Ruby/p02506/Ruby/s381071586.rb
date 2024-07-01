# coding: utf-8

count = 0
endl = 0
loop do
  main = gets.chomp
  input = gets
  word = input.split(" ")
  word.each do |item|
    count += 1 if item == main
    endl = 1 if item == "END_OF_TEXT"
  end
  break if endl == 1
end
puts count