N, M = gets.chomp.split(" ").map(&:to_i)
a = gets.chomp.split(" ").map(&:to_i).sort

top_a = a.last(M)
rest_a = a.first([a.size - M, 0].max) || []

sale_a = []

v = nil
M.times do
  if (top_a.last || 0) > (sale_a.last || 0)
    break if top_a.last.zero?
    v = top_a.pop / 2
  else
    break if sale_a.last.zero?
    v = sale_a.pop / 2
  end
  idx = sale_a.bsearch_index {|x| x >= v }
  if idx.nil?
    sale_a << v
  else
    sale_a.insert(idx, v)
  end
end

puts (top_a + sale_a + rest_a).inject(&:+)
