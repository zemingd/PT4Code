A,B,C,D=gets.split.map(&:to_i)
if C <= B && B <= D
    puts B - C
elsif A <= C && D <= B
    puts D - C
else
    puts 0
end