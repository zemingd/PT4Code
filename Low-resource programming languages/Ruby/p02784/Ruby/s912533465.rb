get = gets.split(' ')

h = get[0].to_i
n = get[1].to_i
a = gets.split(' ')

a.each do |a|
  h = h - a.to_i
end
if h > 0
  puts "No"
else
  puts "Yes"
end