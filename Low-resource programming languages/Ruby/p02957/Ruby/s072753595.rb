a,b = gets.split.map(&:to_i)
k = (b-a).abs
if (a+b).odd?
  puts "IMPOSSIBLE"
else
  p (b+a)/2
end