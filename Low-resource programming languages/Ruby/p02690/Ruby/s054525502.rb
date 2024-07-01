X=$stdin.read.chomp.to_i
(1..).each do |a|
  a5 = a ** 5
  d = (X - a5)
  b = (d.abs ** (1 / 5.to_f)).round * (-1) * (d/d)
  b5 = b**5
  if a5 - b5 == X
    puts "#{a} #{b}"
    break
  end
end