n = gets.chomp.to_i
sum = 0
score = []

n.times do |i|
    score[i] = gets.chomp.to_i
end

sum = score.inject(:+)
score.sort!

0.upto(score.length - 1) do |j|
    if score[j] % 10 == 0
        next
    elsif (sum % 10 == 0) && (sum != 0) && (score[j] % 10 != 0)
        sum -= score[j]
    else 
        break
    end
end

if sum % 10 == 0 ; sum = 0
end

puts sum