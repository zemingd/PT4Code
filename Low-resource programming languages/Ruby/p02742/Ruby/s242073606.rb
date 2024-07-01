line = gets.split(' ').map(&:to_i)

H = line[0]
W = line[1]

if H == 1 or W == 1 then
  print 1
elsif H % 2 == 0 or W % 2 == 0 then
  print H * W / 2
else
  print (H * W + 1) / 2
end
