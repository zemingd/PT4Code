X=$stdin.read.chomp.to_i
s = X ** (1/5.to_f).floor
(-120..).each do |a|
  a5 = a ** 5
  d = (X - a5)
  b = (d.abs ** (1 / 5.to_f)).round * (-1) * (if d == 0 then 1 else d/d end)
  b5 = b**5
  if a5 - b5 == X
    puts "#{a} #{b}"
    break
  end
end