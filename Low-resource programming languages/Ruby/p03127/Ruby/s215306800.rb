n=gets.to_i
a=gets.split.map(&:to_i).sort
if a.all?{|m| m%a[0]==0}
  puts a[0]
else
  if a.all?{|m| m.even?}
    mod=a.map{|m| m%a[0]}
    puts mod[1]
  else
    puts 1
  end
end
