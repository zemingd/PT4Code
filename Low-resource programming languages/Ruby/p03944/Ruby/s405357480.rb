w,h,n = gets.split.map(&:to_i)
dot = []
n.times do
  dot << gets.split.map(&:to_i)
end

arr_x = Array.new(w,0)
arr_y = Array.new(h,0)

dot.each do |a|
  case a[2]
  when 1
    arr_x.fill(1,0,a[0])
  when 2
    arr_x.fill(1,a[0],w)
  when 3
    arr_y.fill(1,0,a[1])
  when 4
    arr_y.fill(1,a[1],h)
  end
end

p arr_x.count(0) * arr_y.count(0)
