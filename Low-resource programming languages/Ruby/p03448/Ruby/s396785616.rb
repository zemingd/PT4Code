A = gets.to_i
B = gets.to_i
C = gets.to_i
X = gets.to_i

result = 0

([X / 500, A].min + 1).times do |a|
    remain = X - a * 500
    ([remain / 100, B].min + 1).times do |b|
        result += 1 if (remain - b * 100) / 50 <= C
    end
end

print result