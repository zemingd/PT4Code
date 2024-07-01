s,t = gets.split.map(&:to_s)
a,b = gets.split.map(&:to_i)
u = gets.to_i
 
if u === s
  puts"#{a - 1} #{b}"
elsif u === t
  puts"#{a} #{b - 1}"
end