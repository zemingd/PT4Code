# coding: utf-8
N = gets.to_i
A=gets.chomp.split(" ").map(&:to_i);
B=Array.new(N,0)

for i in 0..N-1 do
  B[A[i]-1]=i+1
end
print(B.join(" "))

