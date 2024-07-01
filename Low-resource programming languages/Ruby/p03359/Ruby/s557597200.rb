a=STDIN.gets.strip.split.map(&:to_i)
if a[0]<=a[1]
  puts a[0]
else
  puts a[0]-1
end