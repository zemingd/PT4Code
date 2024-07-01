S=gets.chomp
K=gets.to_i

one = (S.index('1')||-1)+1
if K <= one
    puts 1
else
    puts S.delete('1')[0]
end
