(N, A, B) = gets.chomp.split
N = N.to_i
A = A.to_i
B = B.to_i
train = N*A
if train > B
    puts train
else 
    puts B
end