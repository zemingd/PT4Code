n, m = gets.split.map(&:to_i)
works = []
n.times { works << gets.split.map(&:to_i) }
availables = []
1.upto(m) do |index|
  availables << index
end
works.sort! { |a, b| (b[1] <=> a[1]).nonzero? || b[0] <=> a[0] }
sum = 0
works.each do |day, salary|
  if index = availables.bsearch_index { |item| item >= day }
    availables.delete_at(index)
    sum += salary
  end
end
puts sum
