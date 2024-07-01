N = gets.to_i
As = [nil ] + readlines.map(&:to_i)

m = [false] * (N + 1)
c, n = 0, 1
loop do
  n = As[n]
  c += 1
  if n == 2
    puts c
    exit
  end
  if m[n]
    puts -1
    exit
  end
  m[n] = true
end