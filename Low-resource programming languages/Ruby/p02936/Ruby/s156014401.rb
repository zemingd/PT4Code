n,q = gets.chomp.split(" ").map(&:to_i)
parent = []
value = Array.new(n+1,0)
(n-1).times do
  i,j = gets.chomp.split(" ").map(&:to_i)
  parent[j] = i
end
q.times do
  i,j = gets.chomp.split(" ").map(&:to_i)
  value[i] += j
end
(2..n).each do |i|
  value[i] += value[parent[i]]
end
puts value[1..n].join(" ")
