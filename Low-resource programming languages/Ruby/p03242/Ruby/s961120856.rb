s = gets.chomp.split('')
puts s.map{ |n| n == '1' ? '9' : '1' }.join