A,B,C,K = gets.chomp.split.map(&:to_i)
ans = 0

if A >= K
  ans = K
elsif (A + B) >= K
  ans = A
else
  ans = A - (K - A - B)
end

puts ans