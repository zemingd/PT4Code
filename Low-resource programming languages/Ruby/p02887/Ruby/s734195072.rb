n = gets.chomp.to_i
s = gets.chomp.split('')
if n == 1
    puts 1
    exit
elsif n == 2
    puts s[0] == s[1] ? 1 : 2
    exit
end

comp = false
ans = s.length
i = 0
while true do
    if s[i+1] == s[i]
        s.delete_at(i+1)
    else
        i += 1
    end
    break if s.length == i+2
end
puts s[i] == s[i+1] ? s.length-1 : s.length