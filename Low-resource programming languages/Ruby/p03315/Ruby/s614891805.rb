s = gets

plus = 0
minus = 0
s.each_char do |a|
    if a == '+'
        plus += 1
    elsif a == '-'
        minus += 1
    end
end
p plus - minus