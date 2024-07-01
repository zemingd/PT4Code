grid=Array.new(3).map{Array.new(3)}
(0..2).each do |i|
  str=gets.chomp.split(" ").map{|str|str.to_i}
  grid[i]=str
end
p=Array.new()
q=Array.new()
r=Array.new()
(0..2).each do |i|
  p<<grid[i][0]-grid[i][1]
  q<<grid[i][1]-grid[i][2]
  r<<grid[i][2]-grid[i][0]
end
flag=p[0]==p[1] && p[1]==p[2]
flag=q[0]==q[1] && q[1]==q[2]
flag=r[0]==r[1] && r[1]==r[2]

if flag then
  puts "Yes"
else
  puts "No"
end