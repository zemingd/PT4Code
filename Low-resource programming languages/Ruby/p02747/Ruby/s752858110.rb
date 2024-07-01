line = gets.chomp
while line.index("hi")!=nil do
  a=line.index("hi")
  line.slice!(a..a+1)
end
if line.length==0 then
  puts "Yes"
else
  puts "No"
end