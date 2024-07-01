while line = gets
  line.split.map!(&:to_i)
  puts (line[0] + line[1]).to_s.length
end