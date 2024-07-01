w,h,x,y,r = gets.split.map!(&:to_i)
w_max_limit = w - r
w_min_limit  = r
h_max_limit = h - r
h_min_limit  = r
if x < w_min_limit || x > w_max_limit || y <h_min_limit || y > h_max_limit then
  puts "Yes"
else
  puts "No"
end