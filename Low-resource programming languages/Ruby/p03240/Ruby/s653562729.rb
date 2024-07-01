N = gets.to_i
points = []
N.times do |i|
  points[i] = gets.split.map(&:to_i)
end
points.sort_by!{|x| -x[2]}

list = {}

# initial
for cx in 0..100 do
  for cy in 0..100 do
    h = points[0][2] + (points[0][0] - cx).abs + (points[0][1] - cy).abs
    list[[cx,cy]] = h
  end
end


for i in 1...N do
  for cx in 0..100 do
    for cy in 0..100 do
      if points[i][2] != 0
        h = points[i][2] + (points[i][0] - cx).abs + (points[i][1] - cy).abs
        if list[[cx,cy]] == h
          next
        else
          list.delete([cx,cy])
        end
      else
        h1 = [list[cx,cy] - (points[i][0] - cx).abs - (points[i][1] - cy).abs, 0].max
        list.delete([cx,cy]) if h1 != 0
      end
    end
  end
end

ans1 = 0
ans2 = 0
ans3 = 0
list.each{|k,v|
  ans1,ans2 = k
  ans3 = v
}

puts "#{ans1} #{ans2} #{ans3}"
