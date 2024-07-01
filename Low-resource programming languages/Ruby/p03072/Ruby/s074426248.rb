n = gets.to_i
list = gets.split.map(&:to_i)
ans = 0
max = 0

(1..n).each do |i|
  if list[i-1] >= max
    ans += 1
    max = list[i-1]
  end
end

puts ans
