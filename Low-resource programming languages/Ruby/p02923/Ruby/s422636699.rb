gets
n = gets.split.map(&:to_i)
parts = [0] + n.drop(1).zip(n).map{|right, now|
    right <= now ? '1' : ' '
}.join("").split().map(&:size)
puts parts.max
