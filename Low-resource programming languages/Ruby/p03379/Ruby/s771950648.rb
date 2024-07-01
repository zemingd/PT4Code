n = gets.to_i
xs = gets.chomp.split.map(&:to_i)
i = 0
ss = Marshal.load(Marshal.dump(xs)).sort!
n.times do |i|
  ds = Marshal.load(Marshal.dump(ss))
  ds.delete_at(ss.index(xs[i]))
  puts ds[n/2 - 1]
end

