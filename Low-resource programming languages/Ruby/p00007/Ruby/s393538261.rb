i = 100
gets.to_i.times{
  i = (i * 1.05).ceil
}
puts i * 1000