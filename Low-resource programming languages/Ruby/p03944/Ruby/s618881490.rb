w,h,n=gets.split.map &:to_i
x=[]
y=[]
a=[]
n.times{
    unko=gets.split.map(&:to_i)
    x<<unko[0]
    y<<unko[1]
    a<<unko[2]
}
lx=0
ux=w
ly=0
uy=h
a.each_with_index{|j,i|
    if j==1
        lx=[lx,x[i]].max
    elsif j==2
        ux=[ux,x[i]].min
    elsif j==3
        ly=[ly,y[i]].max
    else
        uy=[uy,y[i]].min
    end
}
w=ux-lx
h=uy-ly
if w<0||h<0
    p 0
else
    p w*h
end