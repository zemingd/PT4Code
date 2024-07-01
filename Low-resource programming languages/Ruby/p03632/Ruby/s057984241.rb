s = gets.split(" ").map(&:to_i)
t = s.sort[2] - s.sort[1]

if s[1] <= s[2] || s[3] <= s[0]
    t = 0
end
puts t