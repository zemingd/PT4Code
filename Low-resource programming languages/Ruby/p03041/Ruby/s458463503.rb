n, k = gets.chomp.split(" ").map(&:to_i)
s = gets.chomp.split("")
case s[k-1]
when "A"
    s[k-1] = "a"
when "B"
    s[k-1] = "b"
else
    s[k-1] = "c"
end

puts s.join("")