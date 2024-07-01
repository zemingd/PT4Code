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
            buffer = score[k]
            score[k] = score[k+1]
            score[k+1] = buffer
        end
    end
end

l = 0
while true do
    flag = false 
    9.times do |j|
        if sum == 10 * (j + 1) then
            flag = true
            sum -= score[l]
        else 
        end
    end
    if flag != true ; break
    end
    l += 1
end

puts sum