i1,i2=gets.split.map{&:to_s}
if i1 == i2
  puts '='
elsif i2 > i1
  puts '<'
else
  puts '>'
end