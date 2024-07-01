k = gets.to_i
a,b = gets.split.map &:to_i
ans = false
a.upto(b) do |i|
  if i % k == 0
    ans = true
  end
end
puts ans ? "OK" : "NG"