n, l = gets.split(" ").map(&:to_i)
puts (0...n).map{ gets.chomp }.sort.join('')
