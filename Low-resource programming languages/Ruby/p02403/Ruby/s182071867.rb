while true

h,w = STDIN.gets.split.map(&:to_i)

break if h == 0 && w == 0

  ww = w
  hh = h

  while hh > 0

    while ww > 0
      print '#'
      ww -= 1
    end

    ww = w
    puts ''
    hh -= 1
  end

h,w,hh,ww = 0

end