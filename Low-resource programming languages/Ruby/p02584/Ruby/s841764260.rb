x, k, d = gets.chomp.split.map(&:to_i)
k.times do |i|
  old_x = x
  if (x + d).abs <= (x - d).abs
    x = (x + d)
  else
    x = (x - d)
  end
  if old_x.abs <= x.abs
    p x.abs if (k-i).odd?
    p old_x.abs if (k-i).even?
    exit
  end
end
p x.abs