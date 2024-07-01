N = gets.to_i
S = gets.chomp
ans = N
for i in 0..N do
  s1 = S.slice(0,i)
  s2 = S.slice(i,N-i)
  a = s1.count("W") + s2.count("E")
  ans = [a, ans].min
end
puts ans
