$stdin.gets.chomp.to_i.times.map {
  a = gets.chomp.to_i
  b = gets.chomp.to_i
  puts (a + b) >= 10 ** 80 ? "overflow" : a + b
}