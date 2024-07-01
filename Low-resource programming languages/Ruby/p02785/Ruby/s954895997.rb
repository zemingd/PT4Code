n,k=gets.split.map(&:to_i)
hs=gets.split.map(&:to_i).sort
puts k<n ? hs[0..n-1-k].inject(:+):0
