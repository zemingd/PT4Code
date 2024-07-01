a,b = gets.split
x,y = gets.split.map(&:to_i)
u = gets.to_s

if a == u
  puts "#{x-1} #{y}"
elsif b == u
  puts "#{x} #{y-1}"
end