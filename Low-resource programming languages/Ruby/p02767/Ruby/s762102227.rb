n = gets.to_i
x = gets.split.map &:to_i

ans = 1_000_000_000
1.upto(100) do |i|
  sum = 0
  x.map do |x|
    sum += (x - i) ** 2
  end
  ans = sum if sum < ans
end

puts ans
