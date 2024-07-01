n = gets.to_i
a = gets.split.map(&:to_i)

ans = 0
a.each do |s|
  i = 0
  while s & 1 == 0
    s = s >> 1
    i += 1
  end
  ans += i
end
puts ans