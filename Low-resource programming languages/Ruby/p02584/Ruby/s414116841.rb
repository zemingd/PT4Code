x, k, d = gets.chomp.split.map(&:to_i)
k.times do |i|
  old_x = x
  if (x + d).abs <= (x - d).abs
    x = (x + d)
  else
    x = (x - d)
  end
  if old_x.abs < x.abs && (k-i).odd?
    p x.abs
    exit
  elsif old_x.abs < x.abs && (k-i).even?
    p old_x.abs
    exit
  end
end
p x.abs