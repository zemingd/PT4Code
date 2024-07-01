n, m = gets.chomp.split.map(&:to_i)
a = gets.chomp.split.map(&:to_i).sort
h = m.times.map{ gets.split.map(&:to_i) }
i = 0
h.sort_by{|u, v| -v}.each do |x, y|
  break if a[i] >= y

  x.times do
    a[i] = y
    i += 1
    break if i >= n
    break if a[i] >= y
  end
  break if i >= n
end


puts a.sum
