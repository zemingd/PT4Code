data = gets.split(" ").map{|nn|nn.to_i}
a = data[1]
b = data[0]
ans = 0

if a < b
  ans += b
  b -= 1
else
  ans += a
  a -= 1
end
if a < b
  ans += b
  b -= 1
else
  ans += a
  a -= 1
end

puts ans.to_s