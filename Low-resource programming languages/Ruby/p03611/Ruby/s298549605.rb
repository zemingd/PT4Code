h = Hash.new { 0 }
gets
gets.split.map(&:to_i).each do |a|
  h[a - 1] += 1
  h[a] += 1
  h[a + 1] += 1
end

p h.values.max