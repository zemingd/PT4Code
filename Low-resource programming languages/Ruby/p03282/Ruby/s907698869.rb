S=gets.chomp
K=gets.to_i

one = S.index('1')
if one && K <= one+1
    puts 1
else
    i = 0
    i+=1 while S[i] == '1'
    puts S[i]
end
