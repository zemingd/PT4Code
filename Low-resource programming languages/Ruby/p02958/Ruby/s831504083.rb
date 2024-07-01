i = gets.to_i
n = gets.chomp.split.map(&:to_i)
a = n.sort
cnt = 0
n.size.times do |block|
    if n[block] != a[block]
        cnt += 1
    end
end
if cnt == 2 or cnt == 0 then
    puts "YES"
else
    puts "NO"
end