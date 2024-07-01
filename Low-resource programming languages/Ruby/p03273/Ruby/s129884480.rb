input = $stdin.read.split("\n")
a = []
input.each_with_index do |b, i|
  next if i == 0
  a << b.split('')
end
a1 = []
a.each do |aa|
  aa_uniq = aa.uniq
  if aa_uniq.size > 1 || (aa_uniq.size == 1 && aa_uniq[0] == '#')
    a1 << aa
  end
end
a2 = []
a1.transpose.each do |aa|
  aa_uniq = aa.uniq
  if aa_uniq.size > 1 || (aa_uniq.size == 1 && aa_uniq[0] == '#')
    a2 << aa
  end
end
a2.transpose.each do |aa|
  puts aa.join
end