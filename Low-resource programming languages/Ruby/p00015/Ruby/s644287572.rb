$stdin.gets.chomp.to_i.times.map {
  n = (gets.chomp.to_i + gets.chomp.to_i)
  puts (n > 1e80) ? "overflow" : n
}