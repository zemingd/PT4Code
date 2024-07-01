w = ["NA", "YYMM", "MMYY", "AMBIGUOUS"]
s = gets.chomp
a, b = s[0..1].to_i, s[2..3].to_i
puts w[((a > 0 && a < 13) ? 2 : 0) + ((b > 0 && b < 13) ? 1 : 0)]
