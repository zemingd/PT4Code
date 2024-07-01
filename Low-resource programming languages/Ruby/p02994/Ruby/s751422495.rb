n, l = gets.split.map(&:to_i)
flavors = []
n.times do |i|
  flavors << l + i
end

res =
  if l.negative?
    n < l.abs ? flavors.inject(:+) + flavors.max.abs : flavors.inject(:+)
  else
    flavors[1..-1].inject(:+)
  end

puts res
