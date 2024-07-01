n=gets.to_i
n.times{
  x1,y1,x2,y2,x3,y3,x4,y4 = gets.split(" ").map(&:to_r)
  a1 = (y2-y1)*(x4-x3)
  a2 = (y4-y3)*(x2-x1)
  if a1 == a2
    puts "YES"
  else
    puts "NO"
  end
}
