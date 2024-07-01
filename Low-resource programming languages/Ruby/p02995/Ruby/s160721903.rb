def count(l,r,d)
  r / d - (l - 1) / d
end
A,B,C,D = gets.split.map(&:to_i)

if C == D
  puts (B - A + 1) - count(A,B,C)
else
  puts (B - A + 1) - count(A,B,C) - count(A,B,D) + count(A,B, C.lcm(D))
end
