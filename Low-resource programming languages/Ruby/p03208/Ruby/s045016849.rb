n,k=gets.split.map(&:to_i)
xs=readlines.map(&:to_i).sort
p (0..n-k).map{|i|xs[i+k-1]-xs[i]}.min