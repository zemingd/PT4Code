h,n = gets.chomp.split(" ").map(&:to_i)
a_arr = gets.chomp.split(" ").map(&:to_i)

if h <= a_arr.inject(&:+) then
  puts "Yes"
else
  puts "No"
end
