n, m, c = gets.split.map(&:to_i)
nums = gets.split.map(&:to_i)

puts n.times.map{|i| 
    [nums,gets.split.map(&:to_i)].transpose.map{|it| it.inject(:*)}.inject(:+) + c > 0
}.count(true)
