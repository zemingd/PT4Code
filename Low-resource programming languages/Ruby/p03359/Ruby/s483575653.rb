a, b = gets.chop.split(" ").map(&:to_i)
ans = a -1
if a <= b
    ans += 1
end
puts ans