a, b, c = gets.split.map(&:to_i)
ans = "NO"
if a == 1
  ans = "YES"
else
  (1..b).each do |i|
    ans = "YES" if a*i%b==c
  end
end
puts ans