x, k, d = gets.chomp.split.map(&:to_i)
k.times do |i|
  old_x = x
  if (x + d).abs <= (x - d).abs
    x = (x + d)
  else
    x = (x - d)
  end
  if old_x.abs < x.abs && (k-i+1).even?
    p x.abs
    exit
  end
end
p x.abs