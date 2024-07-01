while line = gets
  n = line.split.map(&:to_i)
  s = 100000
  n[0].times{
    s = s + s * 0.05
    s = s + 999;
    s = s.to_i / 1000 * 1000
  }
  puts s
end