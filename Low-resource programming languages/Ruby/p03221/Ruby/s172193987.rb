n, m = gets.split(" ").map(&:to_i)
a = []
b = []
for i in 0..m-1 do
  p, y = gets.split(" ").map(&:to_i)
  a << [p,y]
end
a.sort_by! {|n| n[0]}
city_num = 0
ken_num = 0
a.each.with_index(0) do |n, i|
  ken_num = n[0] if i == 0
  if ken_num == n[0]
    city_num+= 1
  else
    city_num=1
  end
  b << [n[0], city_num]
end
b.sort_by! {|n| n[1]}
b.map! { |i| i[0].to_s.rjust(6, '0') + i[1].to_s.rjust(6, '0')}
puts b