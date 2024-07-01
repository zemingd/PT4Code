N = gets.to_i
S = gets.chomp
ans = 0
for i in 1..N do
  a = 0
  s1 = S.slice(0,i)
  s2 = S.slice(i,N-i)
  while s1.size > 0
    char = s1[0]
    a += s2.include?(char) ? 1 : 0
    s1.delete!(char)
  end
  ans = [a, ans].max
end
puts ans