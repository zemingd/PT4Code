$stdin.gets.chomp.to_i.times.map {
  a = gets.chomp.to_i
  b = gets.chomp.to_i
  puts (a > 1e79 || b > 1e79 || (a + b) > 1e79) ? "overflow" : a + b
}