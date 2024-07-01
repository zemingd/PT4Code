n = gets.to_i
a = gets.split.map(&:to_i).sort
d = Array.new(n, true)
a.each_with_index do |v, i|
  (i+1...n).each do |j|
    if d[j] && a[j] % v == 0
      d[j] = false
    end
  end
end
puts d.count(true)
