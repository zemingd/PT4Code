ns = gets.chomp.split
p ns.permutation(3).map { |a, b, c|
    (a + b).to_i + c.to_i
}.max