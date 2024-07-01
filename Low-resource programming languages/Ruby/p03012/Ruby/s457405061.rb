n = gets.to_i
w = gets.split("\s").map(&:to_i)
min = 100000

sum = 0

while !w.empty?
  sum += w.shift
  
  diff = ( sum - (w.inject(:+)||0) ).abs
  min = diff if min > diff
end

p min