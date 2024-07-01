n,k = gets.split.map(&:to_i)
l = gets.split.map(&:to_i).sort!.reverse!
s =[]
for i in 0..k-1
  s << l[i]
end
puts s.inject(:+)