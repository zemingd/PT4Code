io = STDIN
a,b,c,d=io.gets.split.map(&:to_f)
if b>c ||
  (a/d).ceil >= (c/b).ceil
  puts 'Yes'
else
  puts 'No'
end
