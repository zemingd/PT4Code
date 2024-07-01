lines=gets(nil)

lines.each do |line|
  a, b = line.split.map(&:to_i)
  puts (a + b).to_s.size
end