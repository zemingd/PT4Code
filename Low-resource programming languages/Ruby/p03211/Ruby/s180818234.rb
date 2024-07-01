s = gets
puts (0..(s.size - 2)).map{|n|
  (753 - s[n..n+2].to_i).abs
}.min
