w, h, n = gets.split.map(&:to_i)
arr1 = [0]
arr2 = [w]
arr3 = [0]
arr4 = [h]

n.times do |i|
  tmp_x, tmp_y, tmp_a = gets.split.map(&:to_i)
  if tmp_a == 1
    arr1.push(tmp_x)
  elsif tmp_a == 2
    arr2.push(tmp_x)
  elsif tmp_a == 3
    arr3.push(tmp_y)
  else
    arr4.push(tmp_y)
  end
end
width = arr2.min - arr1.max
height = arr4.min - arr3.max

if width > 0 && height > 0
  print width * height
else
  print 0
end