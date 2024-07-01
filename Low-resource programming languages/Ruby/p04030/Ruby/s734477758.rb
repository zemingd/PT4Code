s = gets.chomp
ary = []
for i in 0...s.length()
    if (s[i]=='B')
        ary.delete_at(-1)
    else
        ary << s[i]
    end
end
    
puts ary.join("")