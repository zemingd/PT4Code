n = gets.chomp.to_i
sum = 0
score = []

n.times do |i|
    score[i] = gets.chomp.to_i
    sum += score[i]
end

score.length.times do
    (score.length - 1).times do |k|
        if score[k] > score[k+1]
            buf = score[k]
            score[k] = score[k+1]
            score[k+1] = buf
        end
    end
end

l = 0
while true do
    if sum == 0
        break
    elsif sum % 10 == 0
            sum -= score[l]
    else
        break
    end
    l += 1
end

puts sum