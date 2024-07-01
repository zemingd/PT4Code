n = gets.to_i
a = gets.split.map(&:to_i)
even, odd = a.partition.with_index { |_, idx| idx.odd? }

if n.odd?
  puts odd.reverse.concat(even).join(' ')
else
  puts even.reverse.concat(odd).join(' ')
end