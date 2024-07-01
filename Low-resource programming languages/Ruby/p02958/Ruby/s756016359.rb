n = gets.chomp.to_i
p0 = gets.chomp.split(" ").map(&:to_i)

cnt = 0
for i in 1..n do
    if p0[i-1] != i
        cnt += 1
    end
end

if cnt <= 2
    puts "YES"
else
    puts "NO"
end