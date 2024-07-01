a, b, c = gets.split.map &:to_i
  [a..b].each |i| do
  if c % i == 0
    r += 1
  end
  puts "#{ r }"
end