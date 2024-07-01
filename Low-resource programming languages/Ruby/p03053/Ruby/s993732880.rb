H, W = gets.chomp.split.map(&:to_i)
a=[]
H.times do
  a << gets.chomp
end
# p a
b = []
(0..(H-1)).each do |x|
  (0..(W-1)).each do |y|
    b << [x,y] if a[x][y] == "#"
  end
end
# p b
m = 0
(0..(H-1)).each do |x|
  (0..(W-1)).each do |y|
    d = b.map {|z|(x-z[0]).abs() + (y-z[1]).abs()}.min()
    m = d if m < d
  end
end
puts m