n = gets.to_i
a = gets.split.map(&:to_i)
cnt = 0
n.times do |i|
    cnt += 1 if a[i] != i+1
end
if cnt > 2
    puts "NO"
else
    puts "YES"
end