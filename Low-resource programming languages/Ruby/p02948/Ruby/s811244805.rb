n,m = gets.chomp.split.map(&:to_i)
ts = n.times.map{gets.chomp.split.map(&:to_i)}.sort_by(&:first).sort_by(&:last).reverse
ans = 0
availables = (1..m).to_a
ts.each do |d,r|
  if index = availables.bsearch_index{|i| i >= d}
    availables.delete_at(index)
    ans += r
  end
end
puts ans