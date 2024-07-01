n = gets.to_i
xs = gets.split.map(&:to_i)

l, r = xs.sort[(n / 2) - 1, 2]

xs.each do |x|
  puts x <= l ? r : l
end
