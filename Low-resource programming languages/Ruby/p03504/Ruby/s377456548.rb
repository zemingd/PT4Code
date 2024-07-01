N, C = gets.split.map(&:to_i)
STCs = readlines.map{|l| l.split.map(&:to_i)}

rcd = STCs.sort.each_with_object([]) do |p, r|
  if i = r.index{|s, t, c| c == p[2] || t < p[0]}
    r[i] = p
  else
    r << p
  end
end
puts rcd.size