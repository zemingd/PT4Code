a,b=gets.split.map(&:to_i).sort
p a==b ?2*a:[*a..b][-2,2].sum