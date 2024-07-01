N, K = gets.chomp.split(' ').map(&:to_i)
hates = gets.chomp.split(' ').map(&:to_i)

n = N
loop do
  ok = true
  g = n
  while g.positive?
    if hates.include?(g % 10)
      ok = false
      break
    end
    g /= 10
  end

  if ok
    p n
    break
  end

  n += 1
end
