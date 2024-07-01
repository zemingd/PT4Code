w,h,n=gets.chomp.split(" ").map(&:to_i)
b,c=0,0
n.times{
  x,y,a=gets.chomp.split(" ").map(&:to_i)
  case a
  when 1
    b=[b,x].max
  when 2
    w=[w,x].min
  when 3
    c=[c,y].max
  else
    h=[h,y].min
  end
}
puts [(w-b),0].max*[(h-c),0].max