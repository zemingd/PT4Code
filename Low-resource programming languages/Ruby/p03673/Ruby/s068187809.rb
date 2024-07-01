n = gets.to_i
as = gets.split.map &:to_i

b = []
as.each.with_index(1) do |a, i|
  if i % 2 == 0
    b.push a
  else
    b.unshift a
  end
end

if as.size % 2 == 0
  b.reverse!
end

puts b.join(' ')
