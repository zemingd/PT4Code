s = gets.chomp
ret = 10000
(0..(s.size - 2)).each{ |i|
  ret = [ret, (s[i..(i+2)].to_i - 753).abs].min
  }
puts ret
