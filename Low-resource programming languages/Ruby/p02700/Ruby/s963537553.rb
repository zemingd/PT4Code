A = gets.chomp.to_i
B = gets.chomp.to_i
C = gets.chomp.to_i
D = gets.chomp.to_i

BC = C/B.to_f
DA = A/D.to_f

if BC <= DA
    puts('Yes')
else
    puts('No')    
end