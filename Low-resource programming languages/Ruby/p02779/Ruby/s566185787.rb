lines = []
while line = gets
    lines << line.chomp.split(' ').map(&:to_i)
end

N = lines[0][0]

num = lines[1].uniq.length

if num == N then
  print "YES"
else
  print "NO"
end