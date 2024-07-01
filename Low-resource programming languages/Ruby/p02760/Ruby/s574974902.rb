require 'pp'
a = []
3.times do
  a << gets.split.map{|x| [x.to_i, false] }
end
n = gets.to_i
b = []
n.times do
  b << gets.to_i
end

b.each do |bb|
  3.times do |i|
    3.times do |ii|
      a[i][ii][1] = true if a[i][ii][0] == bb
    end
  end
end

c = Array.new(3) {Array.new(3, nil)}

3.times do |i|
  3.times do |ii|
    c[i][ii] = a[i][ii][1]
  end
end


if (c[0][0] && c[0][1] && c[0][2]) || \
   (c[1][0] && c[1][1] && c[1][2]) || \
   (c[2][0] && c[2][1] && c[2][2]) || \
   (c[0][0] && c[1][0] && c[2][0]) || \
   (c[0][1] && c[1][1] && c[2][1]) || \
   (c[0][2] && c[1][2] && c[2][2]) || \
   (c[0][0] && c[1][1] && c[2][2]) || \
   (c[0][2] && c[1][1] && c[2][0])
  puts 'Yes'
else
  puts 'No'
end

# Yes No Yes
#
#
#
#
