N = gets.chomp.to_i
S = gets.chomp
f = 0
answer = 0
for i in 0...N do
    if f == 0
        if S[i] == "A"
            f += 1
        else
            f = 0
        end
    elsif f == 1
        if S[i] == "B"
            f += 1
        elsif S[i] == "A"
            f = 1
        else
            f = 0
        end
    elsif f == 2
        if S[i] == "B"
            f = 2
        elsif S[i] == "A"
            f = 1
        else
            f = 0
        end
        if S[i] == "C"
            answer += 1
        end
    end
end
puts answer