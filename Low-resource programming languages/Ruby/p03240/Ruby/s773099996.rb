n = gets.to_i
x, y, h = [], [], []
n.times{|i| x[i], y[i], h[i] = gets.split.map(&:to_i)}
 
[*0..100].product([*0..100]) do |cx, cy|
  t = (0...n).map{|i| [0, h[i] + (x[i] - cx).abs + (y[i] - cy).abs].max}.uniq
  puts [cx, cy, *t].join(' ') if t.size == 1
end