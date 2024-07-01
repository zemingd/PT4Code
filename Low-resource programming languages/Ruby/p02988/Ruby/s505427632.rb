n = gets.to_i
pp = gets.split.map(&:to_i)

ans = 0
1.upto(n-2) do |i|
    ans += 1 if [pp[i-1], pp[i], pp[i+1]].sort[1] == pp[i]
end

puts ans