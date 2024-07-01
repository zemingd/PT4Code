arr = gets.split('')

puts arr.select {|s| s == 'o'}.size * 100 + 700
