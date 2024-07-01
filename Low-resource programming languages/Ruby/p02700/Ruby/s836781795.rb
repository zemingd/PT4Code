A,B,C,D = gets.chomp.split(' ').map(&:to_i)
countA = C % B == 0 ? C/B : C/B + 1
countC = A % D == 0 ? A/D : A/D + 1

if countA <= countC
    puts('Yes')
else
    puts('No')    
end