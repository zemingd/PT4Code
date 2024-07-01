h,w = STDIN.gets.split.map(&:to_i)

ww = w

while h > 0

  while ww > 0
    print '#'
    ww -= 1
  9 end

  ww = w
  puts ''

  h -= 1
end