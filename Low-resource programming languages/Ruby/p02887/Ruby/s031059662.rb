gets
s = gets.chomp.split("")
tmp = s[0]
ans = 1
s.each do |i|
    if tmp != i
        ans += 1
        tmp = i
    end
end
puts ans