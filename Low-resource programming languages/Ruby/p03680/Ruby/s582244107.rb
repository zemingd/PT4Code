N = gets.to_i
As = [nil ] + readlines.map(&:to_i)

c, n = 0, 1
while c <= N
  n = As[n]
  c += 1
  if n == 2
    puts c
    exit
  end
end
puts -1