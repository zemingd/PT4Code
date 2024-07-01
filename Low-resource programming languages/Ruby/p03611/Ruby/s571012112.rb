N = gets.to_i
hist = Hash.new {|h, k| h[k] = 0 }
A = gets.split.map {|l|
  a = l.to_i
  hist[a-1] += 1
  hist[a] += 1
  hist[a+1] += 1
  a
}
x, max = hist.to_a.sort {|a, b| a[1]<=>b[1] }.last
puts max
