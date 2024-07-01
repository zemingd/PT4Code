def airplane(p, q, r)
  [p, q, r].sort[0..1].inject(:+)
end

puts airplane(*gets.split.map(&:to_i))