N = gets.to_i

A = gets.split(' ')
A.map!{|x| x.to_i}

B = gets.split(' ')
B.map!{|x| x.to_i}

C = gets.split(' ')
C.map!{|x| x.to_i}

sum = 0

N.times do |i|
  sum += B[A[i]-1]
  sum += C[A[i-1]-1] if i>0 && A[i-1]+1 == A[i]
end

p sum
