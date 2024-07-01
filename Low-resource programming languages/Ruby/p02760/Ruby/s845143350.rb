a= gets.split.map(&:to_i)
b= gets.split.map(&:to_i)
c= gets.split.map(&:to_i)
d = []
n = gets.to_i
for j in 0..n-1 do
num = gets.to_i
  d << num
end
if d.include?(a[0]) && d.include?(a[1]) && d.include?(a[2])
  puts "Yes"
elsif d.include?(b[0]) && d.include?(b[0]) && d.include?(b[0])
  puts "Yes"
elsif d.include?(c[0]) && d.include?(c[0]) && d.include?(c[0])
  puts "Yes"
elsif d.include?(a[0]) && d.include?(b[0]) && d.include?(c[0])
  puts "Yes"
elsif d.include?(a[1]) && d.include?(b[1]) && d.include?(c[1])
  puts "Yes"
elsif d.include?(a[2]) && d.include?(b[2]) && d.include?(c[2])
  puts "Yes"
elsif d.include?(a[0]) && d.include?(b[1]) && d.include?(c[2])
  puts "Yes"
elsif d.include?(a[2]) && d.include?(b[1]) && d.include?(c[0])
  puts "Yes"
else
  puts "No"
end