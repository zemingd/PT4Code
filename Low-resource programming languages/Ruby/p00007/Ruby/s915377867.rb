n = gets.to_i
ans = 100
n.times{
  ans = (ans*1.05).ceil
}
puts ans * 1000