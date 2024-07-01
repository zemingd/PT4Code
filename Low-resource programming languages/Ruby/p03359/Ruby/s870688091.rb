io = STDIN
a,b=io.gets.split.map(&:to_i)
if a>b
  puts a-1
else
  puts [a,b].min
end
