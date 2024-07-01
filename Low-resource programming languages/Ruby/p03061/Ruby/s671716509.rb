n=gets.to_i
A=gets.chomp.split(' ').map(&:to_i)

L=[];R=[];L[0]=0;R[0]=0

n.times do |i|
    L[i+1] = L[i].gcd(A[i])
    R[i+1] = R[i].gcd(A[n-i-1])
end

ans = 0
n.times do |i|
   ans = [L[i].gcd(R[n-i-1]),ans].max
end
puts ans