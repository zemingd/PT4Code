N, K = gets.split.map(&:to_i)
A = gets.split.map(&:to_i).group_by(&:itself).values.map(&:size).sort
puts A.size > K ? A[0 ... A.size - K].inject(0,&:+) : 0
