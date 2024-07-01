n, k = gets.chomp.split(" ").map(&:to_i)
stick = gets.chomp.split(" ").map(&:to_i).sort.reverse
ans = 0
k.times do |i|
    ans += stick[i]
end
puts ans