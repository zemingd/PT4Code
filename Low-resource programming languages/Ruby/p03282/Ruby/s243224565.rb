S=gets.chomp
K=gets.to_i

if S[0..K-1].chars.uniq == ['1']
    puts 1
else
    i = 0
    i+=1 while S[i] == '1'
    puts S[i]
end
