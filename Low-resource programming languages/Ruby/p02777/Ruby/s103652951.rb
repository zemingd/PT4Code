s, t = gets.chomp.split(" ")
a, b = gets.chomp.split(" ").map(&:to_i)
u = gets.chomp

if u == s
    puts [a-1, b].join(" ")
else
    puts [a, b-1].join(" ")
end