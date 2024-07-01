arr = Array.new(4){Array.new(3){Array.new(10,0)}}
(gets.to_i).times do
  a=gets.split.map(&:to_i)
  arr[a[0]-1][a[1]-1][a[2]-1] += a[3]
end
4.times do |k|
  3.times do |j|
     print " ", arr[k][j].join(" "),"\n"
  end
  if k<3 then
    puts "#"*20
  end
end