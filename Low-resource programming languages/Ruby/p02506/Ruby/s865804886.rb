# coding:utf-8

find = gets.chomp
counter = 0
loop{
 input = gets.split(" ")
 break if input[0].to_s == "END_OF_TEXT"
 i = 0
 loop{
  break if input[i] === nil
  word = input[i].to_s
  if word.upcase == find.upcase
   counter += 1
  end
  i += 1
 }
}

puts counter