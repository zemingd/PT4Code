n = gets.chomp.to_i
a = gets.chomp.split(" ").map(&:to_i)
ans = []

n.times do |i|
    ans << a[i]
    ans.reverse!
end

puts ans.join(" ")