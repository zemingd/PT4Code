N, K = gets.split.map(&:to_i)
hs = Array.new(N) { gets.to_i }

target = hs.sort
ans = Float::INFINITY
0.upto(N-K) do |i|
    ans = [ans,target[i+K-1] - target[i]].min
end

puts ans
