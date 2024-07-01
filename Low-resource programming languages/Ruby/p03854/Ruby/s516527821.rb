s = gets.strip.reverse

d = ['dreamer', 'eraser', 'erase', 'dream'].map(&:reverse)

while true
        d.each do |word|
                if s[0..2] == word[0..2]
                        s.slice!(word)
                        break
                end
        end
        if s == ""
                break
        end
end

if s == ""
        puts 'YES'
else
        puts 'NO'
end