def height_to_temp(t, x)
  t - x * 0.006
end

n = gets.to_i
t, a = gets.split.map(&:to_i)
hs = gets.split.map(&:to_i)

p hs.map.with_index.min_by { |h, _i| (height_to_temp(t, h) - a).abs }.last + 1
