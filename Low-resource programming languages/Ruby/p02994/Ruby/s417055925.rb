N, L = gets.split.map(&:to_i)

tasts = N.times.map { |i| L + i }
sum = tasts.inject(:+)

ans = Float::INFINITY
min_aji = Float::INFINITY

tasts.each do |t|
  v = sum - t
  aji = (sum - v).abs

  if min_aji > aji
    min_aji = aji
    ans = v
  end
end

puts ans
