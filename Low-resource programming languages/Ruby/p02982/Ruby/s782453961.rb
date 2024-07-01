n, d = gets.split.map(&:to_i)
puts n.times.map{|i| gets.split.map(&:to_i)}.combination(2).map{|a, b|
    Math.sqrt(a.zip(b).map{|a_it, b_it| (a_it - b_it) ** 2 }.inject(:+))
}.count{|val|
    val == val.to_i
}

