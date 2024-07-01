k = gets.chomp.to_i
a, b = gets.chomp.split(" ").map(&:to_i)
ans = false
a.upto(b) do |i|
    ans = true if i % k == 0
end

puts ans ? "Yes" : "No"