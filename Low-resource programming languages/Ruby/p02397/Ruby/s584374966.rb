while line = gets do
  a, b = line.split.map(&:to_i)
  a == 0 && b == 0 ? break : (a > b ? puts("#{a} #{b}") : puts("#{b} #{a}"))
end