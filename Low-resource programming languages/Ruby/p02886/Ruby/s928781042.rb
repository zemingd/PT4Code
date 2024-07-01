n = gets.strip.to_i
ary = gets.strip.split(" ").map(&:to_i)
ans = 0
(0..(n - 2)).each do |i|
  ((i + 1)..(n - 1)).each do |k|
    ans += ary[i] * ary[k]
  end
end
puts ans