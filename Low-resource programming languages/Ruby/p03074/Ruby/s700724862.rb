N, K = gets.split.map(&:to_i)
S = gets.strip

A = []
x = S[0]
A << 0 if x == '0'
c = 1
for i in 1...N
  if S[i] != x
    A << c  
    x = S[i]
    c = 1
  else  
    c += 1
  end
end 
A << c

if A.size <= K * 2 + 1
  puts A.inject(:+)
else  
  puts A.each_cons(K * 2 + 1).each_slice(2).map{|a| a.first.inject(:+)}.max
end