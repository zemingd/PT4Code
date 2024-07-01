s = gets.chars.map(&:to_i)
k = gets.to_i

ans = 1

k.times do |i|
  if s[i] != 1
    ans = s[i]
    break
  end
end

puts ans
