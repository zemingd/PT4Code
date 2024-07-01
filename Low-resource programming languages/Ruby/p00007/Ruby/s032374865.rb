n = gets.to_i
h = 100000
n.times{
h = (h * 1.05).ceil(-3)
}
puts h
