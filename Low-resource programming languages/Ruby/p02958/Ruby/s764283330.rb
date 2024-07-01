n = gets.to_i
a = gets.split.map(&:to_i)
b = a.dup.sort

cnt = 0
for i in 0...n do
    cnt += 1 if a[i] != b[i]
end

if cnt <= 2
    puts "YES"
else
    puts "NO"
end