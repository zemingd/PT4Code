def include3?(i)
  i.to_s.index('3')
end

n = gets.to_i
puts (1..n).select { |i| i % 3 == 0 || include3?(i) }.compact.map { |i| " #{i}" }.join