N = gets.to_i
S = gets.split("")
index = 0

N.times do
    if S[index+2].nil?
        if S[index+1].nil?
            break
        else
            if S[index] == S[index+1] && S[index+1] == S[index+2]
                S.delete_at(index+1)
            elsif S[index] == S[index+1]
                S.delete_at(index+1)
                index += 1
            else
                index += 1
            end
        end
    else
        if S[index] == S[index+1] && S[index+1] == S[index+2]
            S.delete_at(index+1)
        elsif S[index] == S[index+1]
            S.delete_at(index+1)
            index += 1
        else
            index += 1
        end
    end
end

puts S.length
