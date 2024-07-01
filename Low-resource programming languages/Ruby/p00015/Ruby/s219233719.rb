$stdin.gets.chomp.to_i.times.map {
  a = gets.chomp.to_i
  b = gets.chomp.to_i
  puts (a > 1e80 || b > 1e80 || a + b > 1e80) ? "overflow" : a + b
}