w,h,n=gets.chomp.split.map(&:to_i)
l = 0
r = w
b = 0
t = h
n.times{
  x, y , a = gets.chomp.split.map(&:to_i)
  case a
    when 1
      l = x
    when 2
      r = x
    when 3
      b = y
    when 4
      t = y 
  end
}
puts  [(r - l) * (t- b), 0].max

