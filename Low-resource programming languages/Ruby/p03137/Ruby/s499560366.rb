N,M = gets.split.map(&:to_i)
XS = gets.split.map(&:to_i)

xs = XS.sort
ds = []
0.upto(XS.length-2) do |i|
  ds << xs[i+1] - xs[i]
end

ds.sort!

p (ds[0..-N].inject(&:+) || 0)