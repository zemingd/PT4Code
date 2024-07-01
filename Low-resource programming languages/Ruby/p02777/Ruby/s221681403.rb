s,t = gets.split(" ").map(&:to_s)
a,b = gets.split(" ").map(&:to_i)
u = gets.to_s

if u == s
    a = a - 1
elsif u == t
    b = b - 1
end

puts "#{a} #{b}".chomp