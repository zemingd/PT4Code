n, k = gets.split.map(&:to_i)
puts gets.split.map(&:to_i).sort.reverse.take(k).inject(0,&:+)