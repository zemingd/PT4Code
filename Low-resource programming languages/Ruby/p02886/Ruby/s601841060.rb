_ = gets
takoyakis = gets.split.map(&:to_i)
answer = 0
for i in (0..takoyakis.length-2)
    for j in (i+1..takoyakis.length-1)
        answer += takoyakis[i] * takoyakis[j]
    end
end
puts answer
