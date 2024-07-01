N,M = gets.split.map(&:to_i)
l = []
r = []
M.times do |i|
    l[i],r[i] = gets.split.map(&:to_i)
end
result =  r.min-l.max
if result < 0
  puts 0
else 
  puts result+1
end