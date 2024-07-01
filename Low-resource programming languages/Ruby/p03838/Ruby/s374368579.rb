def f(x, y)
  r = Float::INFINITY

  # A
  if x<=y 
    r = [r, y - x].min
  end

  # AB
  if x<=-y
    r = [r, 1-y-x].min
  end

  # BA
  if -x<=y
    r = [r, 1+x+y].min
  end

  # BAB
  if -x<=-y
    r = [r, 2+x-y].min
  end
  r
end

x, y = gets.split.map(&:to_i)
p f(x, y)

