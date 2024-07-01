# Your code here!
a = gets.to_i
ans = 0

(1..3).each do |cnt|
    ans += a ** cnt
end

puts ans.to_i