n, m = gets.split.map(&:to_i)
x = gets.split.map(&:to_i)
x.sort_by!{|z| z}
y = []
(m - 1).times do |i|
  y << x[i + 1] - x[i]
end
puts n >= m ? 0 : y.sort_by!{|z| -z}.drop(n - 1).inject(:+)