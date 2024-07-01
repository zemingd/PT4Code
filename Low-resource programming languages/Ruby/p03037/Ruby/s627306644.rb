n, m = gets.chomp.split(" ").map(&:to_i)
a, b = 0, 1 << 30
m.times do
    l, r = gets.chomp.split(" ").map(&:to_i)
    a = l if a < l
    b = r if b > r
end

if b-a+1 <= 0
    puts 0
else
    puts b-a+1
end