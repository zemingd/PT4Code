gets
ps = gets.split.map(&:to_i)

psc = Marshal.load(Marshal.dump(ps))
psc.sort!

count = 0
ps.each_with_index do |p, i|
  count += 1 if p != psc[i]
end

puts count <= 2 ? 'YES' : 'NO'
