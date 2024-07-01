a, b = gets.chomp.split(" ").map(&:to_f)
a1 = (a / 0.08).ceil
a2 = ((a + 1.0) / 0.08).ceil - 1
b1 = (b / 0.1).ceil
b2 = ((b + 1.0) / 0.1).ceil - 1
puts ([*(a1..a2)] & [*(b1..b2)]).size == 0 ? -1 : ([*(a1..a2)] & [*(b1..b2)])[0]