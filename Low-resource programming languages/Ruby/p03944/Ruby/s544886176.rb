w,h,n=gets.split.map(&:to_i)

l=0
b=0

n.times{
  x,y,a=gets.split.map &:to_i
  case(a)
  when 1
    l=[l,x].max
  when 2
    w=[w,x].min
  when 3
    b=[b,y].max
  when 4
    h=[h,y].min
  end
}

p [(w-l)*(h-b),0].max