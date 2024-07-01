$<.each do |l|
  a, b = l.split.map(&:to_i)
  puts (a+b).to_s.size
end