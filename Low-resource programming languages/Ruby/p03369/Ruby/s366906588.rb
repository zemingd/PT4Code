s = gets.split("").map(&:to_s)
ans = 700
s.each do |i|
  if i == "o"
    ans += 100
  end
end
puts ans