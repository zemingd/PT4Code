n = gets.to_i
as = gets.split.map(&:to_i)
bs = gets.split.map(&:to_i)

ans = 0
bs.each_with_index do |b, i|
  2.times do |j|
    d = as[i + j] <= b ? as[i + j] : b
    as[i + j] -= d
    ans += d
    b -= d
  end
end

puts ans
