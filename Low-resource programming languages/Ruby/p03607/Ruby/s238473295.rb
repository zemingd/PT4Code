n = gets.to_i
l = {}
n.times do
  a = gets.to_i
  l[a] = l[a] == 1 ? 0 : 1
end

puts l.count{|k,v| v!=0}