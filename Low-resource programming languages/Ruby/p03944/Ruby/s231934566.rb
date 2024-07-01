w,h,n=gets.chomp.split.map(&:to_i)
l = 0
r = w
b = 0
t = h
n.times{
  x, y , a = gets.chomp.split.map(&:to_i)
  case a
    when 1
      l = [l,x].max
    when 2
      r = [r,x].min
    when 3
      b = [b,y].max
    when 4
      t = [t,y].min
  end
}
puts  [(r - l) * (t- b), 0].max

