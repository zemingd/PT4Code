#encoding:utf-8 No.0002 2014.9.29
numbers = []

while true
 number = gets.split
 if number == []
  break
 end
 
 2.times do |i|
  number[i] = number[i].to_i
 end
 
 numbers.push number
end

i = 0
while i < numbers.length
 puts "#{numbers[i][0] + numbers[i][1]}".length
 i += 1
end