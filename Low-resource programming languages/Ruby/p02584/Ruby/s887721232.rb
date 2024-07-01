X, K, D = gets.chomp.split(' ').map(&:to_i)
X = X.abs

if X/D > K
  ans = X - D * K 
elsif (K - X/D) % 2 == 0
  ans = X - X/D*D
else
  ans = (X - X/D*D - D) * -1
end

puts ans