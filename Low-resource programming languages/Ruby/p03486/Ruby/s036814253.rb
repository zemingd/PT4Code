s = gets.chomp
t = gets.chomp
S = (s.unpack("C*")).sort
T = (t.unpack("C*")).sort{|a,b| b <=> a}

b = 0
i = 0
while b == 0

    if S[i] < T[i]
        b += 1
        puts 'Yes'
    elsif S[i] > T[i]
        b += 1
        puts 'No'
    elsif S[i] == T[i]
        i += 1
    end
    
end
