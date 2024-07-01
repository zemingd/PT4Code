a, b, c = gets.chomp.split(" ").map(&:to_i)
ans = false

(1..101).each do |i|
    ans = true if a * i % b == c
end

puts ans ? "YES" : "NO"