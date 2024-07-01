gets
a = gets.split.map(&:to_i)
s = a.map{_1.abs}.sum
if a.filter{_1 <= 0}.size.even?
  puts s
else
  puts s - a.map{_1.abs}.min * 2
end