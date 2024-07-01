#favorite sound

A,B,C = gets.chomp.split(" ").map(&:to_i)
if A * C <= B
    puts C
elsif A * C  > B
    puts B / A 
end