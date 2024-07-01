N = gets.to_i

N.times{
  sum = gets.to_i + gets.to_i
  puts sum >= 10**80 ? "overflow" : sum
}