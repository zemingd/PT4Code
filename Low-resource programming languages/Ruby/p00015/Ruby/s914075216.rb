n = gets.to_i
n.times{
  a = gets.to_i
  b = gets.to_i

  puts (a+b) < 10**80 ? a+b : "overflow"
}
