def mC2(m)
  m * (m - 1) / 2
end

N = $stdin.gets.to_i
A = $stdin.gets.split.map {|i| i.to_i }
counts = {}
A.each do |a|
  if counts.has_key?(a)
    counts[a] += 1
  else
    counts[a] = 1
  end
end
mC2s = {}
total = 0
counts.each do |a, c|
  mc2 = mC2(c)
  mC2s[a] = mc2
  total += mc2
end
A.each do |a|
  c = counts[a]
  puts total - mC2s[a] + mC2(c - 1)
end
