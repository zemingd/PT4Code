ns = gets.chomp.split(//).map(&:to_i)
a = []
t = []
prev = nil
ns.each_with_index do |n, i|
  if i == 0
    prev = n
    t << prev
    next
  end
  if prev == n
    t << n
    prev = n
  else
    a << t
    t = []
    prev = n
    t << prev
  end
end
a << t

counts = a.map(&:count)
puts(counts.any? { |e| e >= 3 } ? 'Yes' : 'No')