x,y,z=gets.split.map!{|i| i.to_i}
if x==y && y==z
  puts "No"
elsif x!=y && y!=z && a!=z
  puts "No"
else
  puts "Yes"
end
