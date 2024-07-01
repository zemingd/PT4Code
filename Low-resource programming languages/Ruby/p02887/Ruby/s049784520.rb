n = gets.to_i
s = gets.chomp!

pre = ""
ans = 0
s.each_char do |c|
    ans += 1 if c != pre
    pre = c
end

puts ans
