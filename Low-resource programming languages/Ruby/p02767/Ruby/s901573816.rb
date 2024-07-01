N = gets.to_i
X = gets.split.map(&:to_i)

ans = 10**9
X.min.step(X.max) do |i|
  a = X.inject(0) {|r,x| r + (x - i)**2 }
  ans = a if a > 0 && a < ans
end
puts ans
