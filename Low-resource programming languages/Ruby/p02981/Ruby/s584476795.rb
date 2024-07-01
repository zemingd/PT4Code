N,A,B = gets.chomp.split.map(&:to_i)
if N*A > B
 puts B
else
 puts N*A
end