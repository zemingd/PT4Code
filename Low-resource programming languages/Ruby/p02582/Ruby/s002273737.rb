S = gets.chomp

result = 0
r = 0
S.split('').each do |s|
    if s == 'R'
        r += 1
        if r > result
            result = r
        end
    else
        r = 0
    end
end

puts result