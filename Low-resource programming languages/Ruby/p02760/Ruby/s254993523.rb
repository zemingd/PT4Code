a = gets.split.map(&:to_i)
b = gets.split.map(&:to_i)
c = gets.split.map(&:to_i)
n = gets.to_i
num = n.times.map{gets.to_i}

n.times do |x|
  if num[x] == a[0]
    a[0] = 0
  elsif num[x] == a[1]
    a[1] = 0
  elsif num[x] == a[2]
    a[2] = 0
  elsif num[x] == b[0]
    b[0] = 0
  elsif num[x] == b[1]
    b[1] = 0
  elsif num[x] == b[2]
    b[2] = 0
  elsif num[x] == c[0]
    c[0] = 0
  elsif num[x] == c[1]
    c[1] = 0
  elsif num[x] == c[2]
    c[2] = 0
  end
end
if a.all?{|e|e==0} || b.all?{|e|e==0} || c.all?{|e|e==0}
  puts "Yes"
elsif a[0]==0 && b[0]==0 && c[0]==0
  puts "Yes"
elsif a[1]==0 && b[1]==0 && c[1]==0
  puts "Yes"
elsif a[2]==0 && b[2]==0 && c[2]==0
  puts "Yes"
elsif a[0]==0 && b[1]==0 && c[2]==0
  puts "Yes"
elsif a[2]==0 && b[1]==0 && c[0]==0
  puts "Yes"
else
  puts "No"
end
