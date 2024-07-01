def rate(m, f, r)
  return 'F' if m == -1 || f == -1
  return 'A' if 80 <= m + f
  return 'B' if (65...80).include?(m + f)
  return 'C' if (50...65).include?(m + f)
  if (30...50).include?(m + f)
    if r >= 50
      return 'C'
    else
      return 'D'
    end
  end
  return 'F'
end
readlines.each do |line|
  m, f, r = line.split.map(&:to_i)
  break if [m, f, r].all? {|i| i == -1 }
  puts rate(m, f, r)
end