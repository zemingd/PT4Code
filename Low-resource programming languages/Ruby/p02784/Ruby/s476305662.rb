lines = readlines.map{|line| line.split(' ').map(&:to_i)}
h=lines[0][0]
a=lines[1]
if h<=a.inject(:+) then
  puts "Yes"
else
  puts "No"
end