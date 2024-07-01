n, m = gets.chop.split.map(&:to_i)
py = []

m.times do |i|
  p, y =  gets.chop.split.map(&:to_i)
  py << [p, y, i]
end

py = py.sort_by {|x| [x[0], x[1]]}


tmp = py[0][0]
count = 1

m.times do |i|

  if tmp == py[i][0] then
    py[i][3] = count

    count += 1
  else
    tmp = py[i][0]
    count = 1
    py[i][3] = count
    count += 1
  end

end


py = py.sort_by{ |x| x[2]}


for elm in py
  puts sprintf("%06d",elm[0]) + sprintf("%06d",elm[3])
end
