A = gets.chomp.to_i
B = gets.chomp.to_i
C = gets.chomp.to_i
D = gets.chomp.to_i

BC = C/B 
DA = A/D

puts(BC) 

puts(DA)

if BC <= DA
    puts('Yes')
else
    puts('No')    
end