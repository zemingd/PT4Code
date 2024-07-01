a,b = gets.split.map(&:to_i)

if (a.even? && b.even?) || (a.odd? && b.odd?)
  puts (a + b) / 2
else
  puts 'IMPOSSIBLE'
end
