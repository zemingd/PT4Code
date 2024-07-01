_=gets
a=gets.split.map(&:to_i).sort

p a[a.size/2] - a[a.size/2-1]