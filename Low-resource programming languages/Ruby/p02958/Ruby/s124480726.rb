n = gets.to_i
p = gets.split.map(&:to_i)
c = 0
n.times do |i|
    cnt += 1 if p[i] != i+1
end

puts cnt > 2 ? "NO" : "YES"
