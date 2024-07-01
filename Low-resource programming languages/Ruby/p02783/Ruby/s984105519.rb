h, a = ARGF.read.split(' ').map { |s| s.to_i }
puts h / a if h % a == 0
puts h / a + 1 if h % a != 0