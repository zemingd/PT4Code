h,w = gets.split.map(&:to_i)

a = 0
while a<h
  b = 0
  while b<w
    print "#"
    b += 1
    if b == w

      break
    end
  end
  a += 1
  print "\n"
end