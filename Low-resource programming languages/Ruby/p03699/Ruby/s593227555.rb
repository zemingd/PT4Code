n = gets.chomp.to_i
sum = 0
score = []

n.times do |i|
    score[i] = gets.chomp.to_i
    sum += score[i]
end

(score.length - 1).times do
    (score.length - 1).times do |k|
        if score[k] > score[k+1] then
            buf = score[k]
            score[k] = score[k+1]
            score[k+1] = buf
        end
    end
end

l = 0
while true do
    flag = false 
    if sum % 10 == 0 then
            flag = true
            sum -= score[l]
    end
    if flag != true ; break
    end
    l += 1
end

puts sum