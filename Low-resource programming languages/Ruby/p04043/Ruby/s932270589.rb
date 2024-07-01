
a,b,c=gets.chomp.split(' ').map{|n| n.to_i}
fiv = 0
seven = 0

if a == 5 then
  fiv+1
end

if b == 5 then
  fiv+1
end

if c == 5
  fiv+1
end

if a == 7
  seven+1
end

if b == 7
  seven+1
end

if c == 7
  seven+1
end

if seven == 1 && fiv == 2
  puts "YES"
else
  puts "NO"
end