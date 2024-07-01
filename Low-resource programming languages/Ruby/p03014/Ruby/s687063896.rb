io = STDIN
H,W=io.gets.split.map(&:to_i)
ar=H.times.map{io.gets.chomp}
r=ar.clone.map{|str|str.split(//).map{|x|x=="#" ? "#" : 0}}
l=ar.clone.map{|str|str.split(//).map{|x|x=="#" ? "#" : 0}}
u=ar.clone.map{|str|str.split(//).map{|x|x=="#" ? "#" : 0}}
d=ar.clone.map{|str|str.split(//).map{|x|x=="#" ? "#" : 0}}

ans=0
def set_r(ar)
  (0...H).each do |h|
    (1...W).each do |w|
      if ar[h][w-1]!="#" && ar[h][w]!="#"
        ar[h][w]=ar[h][w-1]+1
      end
    end
  end
end
def set_l(ar)
  (0...H).each do |h|
    (W-1).downto(1) do |w|
      if ar[h][w]!="#" && ar[h][w-1]!="#"
        ar[h][w-1]=ar[h][w]+1
      end
    end
  end
end
def set_u(ar)
  (0...W).each do |w|
    (1...H).each do |h|
      if ar[h-1][w]!="#" && ar[h][w]!="#"
        ar[h][w]=ar[h-1][w]+1
      end
    end
  end
end
def set_d(ar)
  (0...W).each do |w|
    (H-1).downto(1).each do |h|
      if ar[h][w]!="#" && ar[h-1][w]!="#"
        ar[h-1][w]=ar[h][w]+1
      end
    end
  end
end
require 'pp'
set_r(r)
set_l(l)
set_u(u)
set_d(d)
ans=0
(0...H).each do |h|
  (0...W).each do |w|
    temp = 0
    temp += l[h][w] unless l[h][w]=="#"
    temp += r[h][w] unless r[h][w]=="#"
    temp += u[h][w] unless u[h][w]=="#"
    temp += d[h][w] unless d[h][w]=="#"
    ans=[ans,temp+1].max
  end
end
p ans
