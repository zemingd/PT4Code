l, r = gets.split.map(&:to_i)

r = [r, l+2019].min

ans = (l..r).to_a.combination(2).to_a.map do |a, b|
  (a*b) % 2019
end.min

puts ans