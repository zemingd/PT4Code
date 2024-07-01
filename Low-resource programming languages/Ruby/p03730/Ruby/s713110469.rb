a, b, c = gets.strip.split.map(&:to_i)

flag = false
(1..b).each do |i|
    if a*i %b == c
        flag = true
        break
    end
end

puts flag ? "YES" : "NO"
