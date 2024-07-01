A, B, C, D = gets.split.map &:to_i
ret = 0
if B < C || D < A
    ret = 0
elsif C <= A && D <= B
    ret = B - A
elsif A <= C && D <= B
    ret = D - C
elsif A <= C && B <= D
    ret = B - C
end
puts ret