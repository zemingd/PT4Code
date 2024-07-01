A,B,C,D=gets.split.map(&:to_i)
if A < C && C < B && B < D
    puts B - C
elsif A < C && D < B
    puts D - C
elsif C < A && B < D
    puts B - A
elsif C < A && A < D && D < B
    puts D - A
else
    puts 0
end