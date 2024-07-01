def lscan; gets.split.map(&:to_i); end

a,b = lscan

1.upto(99999) do |x|
  next if x*8/100 != a
  next if x*10/100 != b
  p x
  exit
end
p -1