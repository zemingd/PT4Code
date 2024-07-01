a,b = gets.split.map(&:to_i)

ans = 0
(a..b).each do |i|
  if i.to_s == i.to_s.reverse
    ans += 1
  end
end

puts ans