s = gets.strip

d = ['dreamer', 'eraser', 'erase', 'dream']

while true
        f = false
        d.each do |word|
                if s[-word.size, word.size] == word
                        s = s[0..-(word.size + 1) ]
                        f = true
                        break
                end
        end
        if not f
                break
        end
end

if s == ""
        puts 'YES'
else
        puts 'NO'
end