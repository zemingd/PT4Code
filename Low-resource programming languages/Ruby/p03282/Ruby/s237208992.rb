s = gets.strip.chars.map(&:to_i)
k = gets.strip.to_i

ans = nil
i = 0
while s[i] == 1 do
  i += 1
  if k == i
    ans = 1
  end
end

ans ||= s[i]

puts ans
