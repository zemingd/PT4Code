# in:   n t     20 195000
# out:  x y z   10000 5000 1000

n, t = gets.split
n = n.to_i
t = t.to_i

x = y = z = 0

# (n+1).times do |i|
#   t_temp = t
#   t_temp -= 10000 * i
#   next if t_temp < 0
#   if t_temp == 0
#     x = i
#     break
#   end
#   ((n+1)-i).times do |j|
#     t_temp = t
#     t_temp -= 10000 * i
#     t_temp -= 5000 * j
#     next if t_temp < 0
#     if t_temp == 0
#       x = i
#       y = j
#       break
#     end
#     ((n+1)-i-j).times do |k|
#       t_temp = t
#       t_temp -= 10000 * i
#       t_temp -= 5000 * j
#       t_temp -= 1000 * k
#       next if t_temp < 0
#       if t_temp == 0
#         x = i
#         y = j
#         z = k
#         break
#       end
#     end
#     break if t_temp == 0
#   end
#   break if t_temp == 0
# end

# if x==0 && y==0 && z==0
#   x = y = z = -1
# end
# puts "#{x} #{y} #{z}"

puts "#{-1} #{-1} #{-1}"
