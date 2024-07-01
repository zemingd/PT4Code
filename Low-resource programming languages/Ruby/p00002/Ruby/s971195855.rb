while line = gets
  a, b = line.split(' ')
  puts (a.to_i + b.to_i).to_s.length
end