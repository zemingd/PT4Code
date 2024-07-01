N,x=gets.split.map(&:to_i)
A=gets.split.map(&:to_i).sort
ans = 0
A.each{ |a|
  x -= a
  if x < 0
    p ans
    exit
  end
  ans += 1
}
ans -= 1 if x != 0
p ans