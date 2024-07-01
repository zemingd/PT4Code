X,A,B = gets.split.map(&:to_i)
if B <= A
 puts("delicious")
 elsif A+1 <= B && B <= X
 puts("safe")
 elsif X+1 <= B
 puts("dangerous")
end