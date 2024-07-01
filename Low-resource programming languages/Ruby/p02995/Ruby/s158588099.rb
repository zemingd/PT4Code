a,b,c,d = gets.chomp.split(' ').map(&:to_i)
aa = (b / c.to_f).floor
bb = (b / d.to_f).floor
lcm = c.lcm(d)
cc = (b / lcm.to_f).floor
zentai = b - (aa + bb - cc)

dd = ((a-1) / c.to_f).floor
ee = ((a-1) / d.to_f).floor
ff = ((a-1) / lcm.to_f).floor
haijo = (a-1) - (dd + ee - ff)

puts zentai - haijo