S=gets.chomp
K=gets.to_i

one = S.index('1')
if one && K <= one+1
    puts 1
else
    puts S[S.index(/[^1]/)]
end
