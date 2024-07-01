n = gets.chomp.to_i
p = gets.chomp.split(' ').map(&:to_i)

cnt = 0

p.size.times do |i|
  a = p[i]
  b = p[i+1]
  c = p[i+2]
  break if !b || !c
  
  t = [a,b,c].sort
  
  cnt += 1 if t[1] == b
end

puts cnt