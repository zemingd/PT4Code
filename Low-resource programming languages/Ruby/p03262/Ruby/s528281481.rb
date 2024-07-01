n,X = gets.chomp.split(" ").map(&:to_i)
x = gets.chomp.split(" ").map(&:to_i)
ans = (x[0]-X).abs
for i in 1..n-1
  ans = ans.gcd((x[i]-X).abs)
end
puts ans