A, B, C = gets.chomp.split.map(&:to_i)
aa = (A * 10 + B) + C
bb = (A * 10 + C) + B
cc = (B * 10 + A) + C
dd = (B * 10 + C) + A
ee = (C * 10 + A) + B
ff = (C * 10 + B) + A
puts [aa, bb, cc, dd, ee, ff].max