n=gets.to_i
a=gets.split.map(&:to_i)
s = a.sort
cnt = 0
n.times do |i|
    if a[i] != s[i]
        cnt += 1
    end
end

if cnt == 0 || cnt == 2
    puts "YES"
else
    puts "NO"
end