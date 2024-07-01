lines = readlines(chomp: true).map{|line| line.split(' ').map(&:to_i)}
 
n = lines[0][0]
subordinator = []
 
for i in 1..n
  presub = lines[1][i..n]
  sub = presub.select{|e| e == i}
  a = sub.size
  subordinator.push(a)
end
 
puts subordinator