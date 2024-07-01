h,w = gets.chomp.split(' ').map(&:to_i)
ans = 0
multiplication = h*w
if h == 1 || w == 1
  ans = 1
else
  ans = multiplication % 2 == 0 ? multiplication/2 : multiplication/2+1
end

puts ans