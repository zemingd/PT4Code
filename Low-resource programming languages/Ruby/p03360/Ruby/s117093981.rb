A,B,C=gets.split.map &:to_i
K=gets.to_i
m = [A,B,C].max
puts A+B+C-m+m*2**K