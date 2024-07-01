def main
  a, b, c, d = ARGF.gets.split.map(&:to_i)

  lower = [a, c].max
  upper = [b, d].min

  intersect = upper - lower
  if 0 <= intersect
    puts intersect
  else
    puts 0
  end
end

if __FILE__ == $0
  main
end
