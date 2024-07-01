
n,x = gets.split.map(&:to_i)
a = gets.split.map(&:to_i).sort!
puts a[0] - x; exit if x < a[0]
for i in 0..a.length-1
if x < a[i]
   puts [(a[i] - x).abs,(x - a[i-1]).abs].min
   break
end
end