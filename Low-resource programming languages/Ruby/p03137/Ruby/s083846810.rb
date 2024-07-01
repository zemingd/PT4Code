N, M = gets.split.map(&:to_i)
D = gets.split.map(&:to_i).sort.each_cons(2).map{|a,b| b - a }.sort
puts D[0, M - N].inject(0,&:+)
