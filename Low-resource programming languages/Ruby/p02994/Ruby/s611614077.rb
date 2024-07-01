N, L = gets.split.map(&:to_i)

tastes = N.times.map { |i| L + i }

min_abs = 999
min = nil
tastes.each do |taste|
  if min_abs > taste.abs
    min_abs = taste.abs
    min = taste
  end
end

puts tastes.inject(:+) - min
