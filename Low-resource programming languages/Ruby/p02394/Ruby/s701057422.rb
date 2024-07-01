arr = gets.to_s.split(" ")

w = arr[0].to_i
h = arr[1].to_i
x = arr[2].to_i
y = arr[3].to_i
r = arr[4].to_i

if x >= r && y >= r && x <= w - r &&  y <= h - r then
  puts "Yes"
else
  puts "No"
end
  