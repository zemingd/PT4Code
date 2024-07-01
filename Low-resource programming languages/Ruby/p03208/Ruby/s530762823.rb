n, k = gets.split.map(&:to_i)

trees = n.times.map{|i| gets.to_i}.sort
puts trees.drop(k - 1).zip(trees).map{|tall, short|
    tall - short
}.min
