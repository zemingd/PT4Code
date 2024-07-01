L, R = gets.split.map(&:to_i)

min1 = L % 2019
min2 = (L + 1) % 2019
((L + 2)..(R - 1)).map { |i| i % 2019 }.each do |i_mod|
  if i_mod < min1
    min2 = min1
    min1 = i_mod
  end
end

out = min1 * min2

puts out
