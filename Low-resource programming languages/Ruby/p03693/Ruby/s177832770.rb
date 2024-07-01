line = line = gets.split(' ')
a = line.inject(:+).to_i
puts a % 4 == 0 ? "YES" : "NO"
