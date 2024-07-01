require 'complex'

class Datax
  def initialize x,y,h
    @x=x
    @y=y
    @h=h
  end
  def x
    @x
  end
  def y
    @y
  end
  def h
    @h
  end
  def to_str
    "#{@x} #{@y} #{@h}"
  end
end


n1=gets.chomp.to_i
ret = Hash.new
h_arr = Array.new
n1.times do | val |
  x,y,h = gets.chomp.split(" ").map(&:to_i);
  data = Datax.new x,y,h
  if ret[h] == nil
    ret[h] = Array.new
  end
  ret[h].push data
  h_arr.push h
end

h_data = h_arr.sort.uniq.reverse

top = h_data.first
top_data = ret[top]


if top_data.size == 1
  puts top_data[0].to_str
  exit
end

def cut_xy x1,x2,sx
  dx = [x1,x2].max - sx
  ddx = [x1,x2].min + dx
  return ddx
end

if top_data.size == 2
  top1 =  top_data[0]
  top2 =  top_data[1]
  second = ret[h_data[1]].first
  diff_h = top1.h - second.h

  ans_x = cut_xy( top1.x, top2.x, second.x)
  ans_y = cut_xy( top1.y, top2.y, second.y)
  ans_h = top1.h + diff_h

  ans = Datax.new( ans_x,ans_y,ans_h)
  puts ans.to_str
end

if top_data.size == 4
  ans_x = 0
  ans_y = 0
  min_x = 10000
  min_y = 10000
  top_data.each do | val|
    ans_x += val.x
    ans_y += val.y
    min_x = (min_x < val.x) ? min_x : val.x
    min_y = (min_y < val.y) ? min_y : val.y
  end
  ans_x /= 4
  ans_y /= 4
  diff_x = ans_x - min_x
  diff_x = ans_x - min_x
  ans_h = top_data.first.h + diff_x
  ans = Datax.new( ans_x,ans_y,ans_h)
  puts ans.to_str
end




