n=gets.to_i/2
a=gets.split.map(&:to_i).sort
p a[n]-a[n-1]