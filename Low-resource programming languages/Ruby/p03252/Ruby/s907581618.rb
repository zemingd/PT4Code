s = gets.chomp.split(//)
t = gets.chomp.split(//)
s.length.times do |j|
    next if s[j] == t[j]
    c1, c2 = s[j], t[j] 
    s.length.times do |i|
        if s[i] == c1
            s[i] = c2 
            next
        elsif s[i] == c2
            s[i] = c1
            
        end
    end
end

puts s == t ? "Yes" : "No"