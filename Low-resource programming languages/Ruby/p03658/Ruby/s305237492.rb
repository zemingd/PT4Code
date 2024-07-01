lop, num = gets.split.map{|x| x.to_i}
numbers = []
numbers << gets.split.map{|x| x.to_i}
numbers = numbers.flatten.sort

linking = numbers.last(num)
puts linking.inject(:+)
