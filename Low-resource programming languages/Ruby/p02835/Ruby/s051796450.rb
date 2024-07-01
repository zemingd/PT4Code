io = STDIN
a,b,c=io.gets.split.map(&:to_i)
if a+b+c >= 22
  puts "bust"
else
  puts "win"
end
