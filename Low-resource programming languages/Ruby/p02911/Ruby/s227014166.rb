N,K,Q = gets.split.map(&:to_i)
A = Array.new(Q){gets.to_i}

SCORE = Array.new(N){0}

A.each do |a|
    SCORE[a-1] += 1
end

SCORE.each do |point|
    puts K - Q + point > 0 ? "Yes" : "No"
end