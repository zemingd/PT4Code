A,B,C,K = gets.split.map(&:to_i)

if A+B >= K
  puts A
else
  puts A - (K-A-B)
end