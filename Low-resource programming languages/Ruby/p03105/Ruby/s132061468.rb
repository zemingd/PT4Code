A,B,C = gets.chomp.split(" ").map(&:to_i)
if A*C <= B
    puts C
else
    puts B/A 
end

