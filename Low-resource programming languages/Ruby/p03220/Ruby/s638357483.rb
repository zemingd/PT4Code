n = gets.to_i
t, a = gets.split(" ").map{|d|d.to_i}
puts gets.split(" ").map{|d|d.to_i}.zip((1..n).to_a).map {|h, i|
  [i, (t - h * 0.006 - a).abs]
}.min{|a,b|
  a[1] <=> b[1]
}[0]
