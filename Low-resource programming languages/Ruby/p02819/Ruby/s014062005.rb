x,y,z=gets.split.map(&:to_i)
if x>=z
  puts "#{x-z} #{y}"
elsif x+y<=z
  puts "0 0"
else
  puts "0 #{y+x-z}"
end
