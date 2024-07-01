n = gets.to_i
a = gets.split.map(&:to_i)
q = gets.to_i
bc = []
q.times do
  bc << gets.split.map(&:to_i)
end
rsl = []
q.times do |i|
  b = bc[i][0]
  c = bc[i][1]
  a.map!{|x| x== b ? c : x}
  rsl << a.sum
end
puts rsl