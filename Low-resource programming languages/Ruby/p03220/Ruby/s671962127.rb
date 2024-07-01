n = gets.to_i
t, a = gets.split(" ").map{|d|d.to_i}
puts gets.split(" ").each_with_index.map{|d, i|
  [i, (t - d.to_i * 0.006 - a).abs]
}.min{|a,b|
  a[1] <=> b[1]
}[0] + 1