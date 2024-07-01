n = gets.to_i
x, y, h = n.times.map{ gets.split.map(&:to_i) }.select{|_, _, h| h > 0}.transpose
m = x.size

answers = []
[*0..100].product([*0..100]) do |cx, cy|
  ch = m.times.map{|i| h[i] + (x[i] - cx).abs + (y[i] - cy).abs}.uniq
  answers << [cx, cy, *ch] if ch.size == 1
end

puts answers.sort_by{|_, _, h| h}.first.join(" ")