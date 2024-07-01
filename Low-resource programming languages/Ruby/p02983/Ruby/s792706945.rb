L, R = gets.split.map(&:to_i)

ans = 2 << 60
(L..([L + 2019, R - 1].min)).each do |l|
  ((l + 1)..([l + 1 + 2019, R].min)).each do |r|
    a = l * r % 2019
    ans = a if a < ans
  end
end
puts ans
