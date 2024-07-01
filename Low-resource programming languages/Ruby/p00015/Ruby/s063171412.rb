max = (10 ** 79 - 1)
$stdin.gets.chomp.to_i.times.map {
  a = gets.chomp.to_i
  b = gets.chomp.to_i
  puts (a > max or b > max or (a + b) > max) ? "overflow" : a + b
}