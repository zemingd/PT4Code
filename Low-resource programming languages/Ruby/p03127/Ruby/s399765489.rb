n=gets.to_i
a=gets.split.map(&:to_i).sort
if a.all?{|m| m%a[0]==0}
  puts a[0]
else
  puts 1
end
