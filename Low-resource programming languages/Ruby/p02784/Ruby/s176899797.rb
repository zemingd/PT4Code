h,n = gets.split().map(&:to_i)
a = gets.split().map(&:to_i)
a.each do |x|
  h -= x
end
if h <= 0
  puts "Yes"
else
  puts "No"
end