debt = 100000

n = gets.to_i
n.times {
  debt = (debt * 1.05 / 1000).ceil * 1000
}
puts debt