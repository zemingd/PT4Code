line = gets.chomp
b=line.length
while line.index("hi")!=nil do
  a=line.index("hi")
  line[a]="1"
  line[a+1]="1"
end
if line.split('').count("1")==b then
  puts "Yes"
else
  puts "No"
end