N,A,B = gets.chomp.split(" ").map(&:to_i)
if B >= N*A
    puts N*A
else
    puts B
end
