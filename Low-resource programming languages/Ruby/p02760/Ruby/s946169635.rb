a = gets.chomp.split.map(&:to_i)
b = gets.chomp.split.map(&:to_i)
c = gets.chomp.split.map(&:to_i)
n = gets.chomp.to_i
d = []
n.times { d << gets.to_i }

if d.include?(a[0]) && d.include?(a[1]) && d.include?(a[2])
  puts "Yes"
elsif d.include?(b[0]) && d.include?(b[1]) && d.include?(b[2])
  puts "Yes"
elsif d.include?(c[0]) && d.include?(c[1]) && d.include?(c[2])
  puts "Yes"
elsif d.include?(a[0]) && d.include?(b[0]) && d.include?(c[0])
  puts "Yes"
elsif d.include?(a[1]) && d.include?(b[1]) && d.include?(c[1])
  puts "Yes"
elsif d.include?(a[2]) && d.include?(b[2]) && d.include?(c[2])
  puts "Yes"
elsif d.include?(a[0]) && d.include?(b[1]) && d.include?(c[2])
  puts "Yes"
elsif  d.include?(a[2]) && d.include?(b[1]) && d.include?(c[0])
else
  puts "No"
end