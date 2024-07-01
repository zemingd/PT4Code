str = gets.split
N,A,B = str[0].to_i, str[1].to_i, str[2].to_i

if N*A < B
    puts N*A
else
    puts B
end