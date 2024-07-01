n, m = gets.chomp.split(" ").map(&:to_i)
a = gets.chomp.split(" ").map(&:to_i).sort
b = Array.new(m)
c = Array.new(m)
m.times do |i|
  b[i], c[i] = gets.chomp.split(" ").map(&:to_i)
end
idxes = c.map.with_index { |v, i| [v, i] }.sort_by { |v, i| v }.reverse.map { |v, i| i }
i = 0
finish = false
idxes.each do |idx|
  b[idx].times do
    if a[i] < c[idx]
      a[i] = c[idx]
      i += 1
    else
      finish = true
    end
    break if i >= n || finish
  end
  break if i >= n || finish
end
puts a.inject(&:+)
