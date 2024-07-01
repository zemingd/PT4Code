io = STDIN
a,b,c=io.gets.split.map(&:to_i)
if 4*a*b<(c-a-b)**2
  puts 'Yes'
else
  puts 'No'
end
