def f(h, w)
  area = h*w

  g=lambda{|h,w|
    return 0 if h%3==0
    h1 = area/3/w
    [h1, h1+1].map{|h1|
      # p [w,h]
      a1 = h1*w
      h23 = h-h1
      # p [h1, a1, h23]
      if w.even?
        [(a1 - (area-a1)/2).abs,
          [(a1-(w/2+1)*h23).abs, h23*2].max].min
      else
        [(a1-w/2*h23).abs, (a1-(w/2+1)*h23).abs, h23].max
      end
    }.min
  }
  [g.(h,w), g.(w,h)].min
end

H, W = gets.split.take(2).map(&:to_i)
p f(H, W)
