n, m = gets.chomp.split(" ").map(&:to_i)
ans = Array.new(n, 0)
m.times do
    a, b = gets.chomp.split(" ").map(&:to_i)
    ans[a-1] += 1
    ans[b-1] += 1
end

puts ans.join("\n")