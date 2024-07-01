n = gets.chomp.to_i
i = 100
n.times{
  i = i*1.05
  i = i.ceil
}
puts i*1000
