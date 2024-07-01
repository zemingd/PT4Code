a, b, c, d = gets.split.map(&:to_i)

while a > 0 || c > 0 do
  c -= b
  if c <= 0
    print "Yes\n"
    exit
  end
  a -= d
  if a <= 0
    print "No\n"
    exit
  end
end