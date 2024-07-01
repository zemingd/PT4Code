io = STDIN
a,b,c,d=io.gets.split.map(&:to_f)
if b<d
  puts 'No'
elsif (a/c).ceil >= (b/d).ceil
  puts 'Yes'
else
  puts 'No'
end
