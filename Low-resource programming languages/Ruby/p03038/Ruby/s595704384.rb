n, m = gets.split.map(&:to_i)
a = gets.split.map(&:to_i)

a.sort!
m.times do
  b, c = gets.split.map(&:to_i)
  (0...b).each do |i|
    if a[i] < c
      a[i] = c
    end
  end
  n = a.find_index{|v| v > c}
  n ||= a.length
  a = a[b..n-1] + a[0..b-1] + a[n..-1]
end
puts a.reduce(:+)
