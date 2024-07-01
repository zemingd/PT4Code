a,b=gets.split.map(&:to_i)
s = gets.chomp
flag = true
a.times do |i|
    if ![*?0..?9].include?(s[i])
        flag = false
    end
end
if s[a] != ?-
    flag = false
end
b.times do |i|
    if ![*?0..?9].include?(s[a + i + 1])
        flag = false
    end    
end
puts flag ? "Yes" : "No"