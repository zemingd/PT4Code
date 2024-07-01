n=gets.split.map(&:to_i)
m=[]
m<<5
m<<7
m<<5
if n.sort! == m.sort!
  puts "YES"
else
  puts "NO"
end
