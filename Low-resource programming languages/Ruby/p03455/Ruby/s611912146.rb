io = STDIN
a,b=io.gets.split.map(&:to_i)
if (a*b).even?
  puts "Even"
else
  puts "Odd"
end
