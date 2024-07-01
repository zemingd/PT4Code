num = gets.split.map(&:to_i)
N = num[0]
A = num[1]
B = num[2]
if A*N >= B
    puts B
else
    puts A*N
end