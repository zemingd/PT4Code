n = gets.to_i
an = gets.strip.split.map(&:to_i)

ans = 0
an.each do |a|
  tmp = 0
  while a % 2 == 0
    tmp += 1
    a /= 2
  end
  ans += tmp
end

puts ans
