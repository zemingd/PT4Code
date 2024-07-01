n=gets.to_i
a=gets.split.map(&:to_i).sort
half=n/2
puts a[half]-a[half-1]