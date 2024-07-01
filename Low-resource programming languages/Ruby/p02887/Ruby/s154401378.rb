n = gets.chomp.to_i

oldc = ''
sum = 0
gets.chomp.split('').map{|i|
  sum += 1 if oldc != i
  oldc = i
}

puts sum
