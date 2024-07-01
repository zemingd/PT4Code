l, r = gets.split.map(&:to_i)
r = [r, l + 2019 * 2].min
a = (l..r).to_a.combination(2).map do |c|
  c[0] * c[1] % 2019
end
puts a.min
