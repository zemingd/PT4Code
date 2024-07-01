n = gets.to_i
a = gets.chomp.split.map(&:to_i)

ans = 0
i = 1
a.each do |x|
  if x == i
    i += 1
  else
    ans += 1
  end
end

if n == ans
  p -1
else
  p ans
end