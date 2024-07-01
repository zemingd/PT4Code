n=gets.chomp
array=n.split("").map{|str|str.to_i}
x=n.to_i
f=0
array.each do |n|
  f+=n
end
if x%f==0 then
  puts "Yes"
else
  puts "No"
end
