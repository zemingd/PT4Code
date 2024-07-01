k = gets.to_i
a, b = gets.split.map(&:to_i)

ans = "NG"
a.upto(b) do |i|
  if i % k == 0
    ans = "OK"
    break
  end
end

puts ans
