N = gets.chomp.to_i
A = gets.split(" ")
B = gets.split(" ")
C = gets.split(" ")
A.map!{|item| item.to_i}
B.map!{|item| item.to_i}
C.map!{|item| item.to_i}
sum  = 0
for i in 0..(N-1)
    sum += B[A[i]-1]
    if i > 0
        if A[i]-1 == A[i-1]
            sum += C[A[i-1]-1]
        end
    end
end
puts sum