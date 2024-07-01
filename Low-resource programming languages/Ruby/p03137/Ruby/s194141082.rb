n,m = gets.split.map(&:to_i)
x = gets.split.map(&:to_i)
if n>=m
  puts 0 
  exit
end
x.sort!
ary = []

(m-1).times do |i| 
  ary[i]= x[i+1] - x[i]
end
ary.sort!.reverse!
(n-1).times do |i|
  ary[i]= 0
end
puts ary.inject(&:+)