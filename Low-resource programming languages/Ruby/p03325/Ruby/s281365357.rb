n = gets.to_i
a = gets.split.map(&:to_i)

ans = 0
a.each do |s|
  i = 0
  while s[i] == 0
    i += 1
  end
  ans += i
end
puts ans