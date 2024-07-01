N,Q = gets.split.map &:to_i

tree = Array.new
(N-1).times do
    a,b = gets.split.map &:to_i
    tree[b-1] = a-1
end

point = Array.new(N, 0)
1.upto(Q) do |i|
    p,x = gets.split.map &:to_i
    point[p-1] += x
end

(N-1).times do |i|
    point[i+1] += point[tree[i+1]]
end

puts point.join(" ")