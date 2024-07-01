n = gets.to_i
s = gets.chomp.chars

flag = true
while flag
    flag = false
    (s.size-1).times do |i|
        if s[i] == s[i+1]
            flag = true
            s.delete_at(i)
        end
    end
end
puts s.size