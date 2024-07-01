line = gets.split(' ').map(&:to_i)

H = line[0]
W = line[1]

if H % 2 == 0 or W % 2 == 0 then
  print H * W / 2
elsif H != 1 and W != 1 then
  print (H * W + 1) / 2
else
  print 1
end
