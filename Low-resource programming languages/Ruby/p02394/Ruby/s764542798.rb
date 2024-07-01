w,h,x,y,r = gets.chomp.split(' ').map(&:to_i)
if x+r > w || y+r > h || x < 0 || y <0
  puts 'No'
else
  puts 'Yes'
end