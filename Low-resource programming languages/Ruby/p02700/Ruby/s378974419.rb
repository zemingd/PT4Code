a, b, c, d = gets.split.map(&:to_i)
ans = ''

loop do
  c -= b
  if c <= 0
    ans = 'Yes'
    break
  end
  a -= d
  if a <= 0
    ans = 'No'
    break
  end
end

puts ans