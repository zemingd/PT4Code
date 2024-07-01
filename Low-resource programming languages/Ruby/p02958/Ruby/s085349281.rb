n = gets.chomp.to_i
line = gets.chomp.split(" ").map(&:to_i)

miss = 0
for i in 1..n
    miss += 1 if i != line[i - 1]
end

if miss < 3
    puts "YES"
else
    puts "NO"
end
