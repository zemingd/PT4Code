N = gets.to_i
A = gets.split.map(&:to_i)

ans = 0

A.each do |a|
  while a % 2 == 0
    a /= 2
    ans += 1
  end
end

puts ans
