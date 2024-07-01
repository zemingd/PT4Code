N,Q = gets.split.map &:to_i

EDGE = Array.new
(N-1).times do
    a,b = gets.split.map &:to_i
    EDGE[b] = a
end

NODE = Array.new(N, 0)
Q.times do
    i,x = gets.split.map &:to_i
    NODE[i-1] += x
end

2.upto(N) do |i|
    NODE[i-1] += NODE[EDGE[i]-1]
end

puts NODE.join(" ")