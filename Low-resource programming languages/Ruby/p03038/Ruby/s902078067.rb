n, m = gets.chomp.split.map(&:to_i)
arr = gets.chomp.split.map(&:to_i)

m.times do
  l, r = gets.chomp.split.map(&:to_i)
  arr.concat(Array.new(l, r))
end

puts (arr.sort[-n, n].inject(:+))
