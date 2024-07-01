a,b = gets.split.map(&:to_i)
if (a.even? && b.even?) || (a.odd? && b.odd?)
  a, b = b, a if a > b
  puts (b-a)/2
else
  puts "IMPOSSIBLE"
end