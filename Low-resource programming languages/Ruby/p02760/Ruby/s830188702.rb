a = gets.split.map(&:to_i)
b = gets.split.map(&:to_i)
c = gets.split.map(&:to_i)
n = gets.to_i
p = []
n.times do
  x = gets.to_i
  p << x
end
ap = []
bp = []
cp = []
a.each do |i|
  if p.count(i) != 0
    ap << 1
  else
    ap << 0
  end
end
b.each do |j|
  if p.count(j) != 0
    bp << 1
  else
    bp << 0
  end
end
c.each do |k|
  if p.count(k) != 0
    cp << 1
  else
    cp << 0
  end
end
x = []
x << ap
x << bp
x << cp
an = 0
for l in 0..2
  if x[l][0] == 1 && x[l][1] == 1 && x[l][2] == 1
    an = 1
    break
  elsif x[0][l] == 1 && x[1][l] == 1 && x[2][l] == 1
    an = 1
    break
  end
end
if an == 1
  puts "Yes"
elsif x[0][0] == 1 && x[1][1] == 1 && x[2][2] == 1
  puts "Yes"
elsif x[2][0] == 1 && x[1][1] == 1 && x[0][2] == 1
  puts "Yes"
else
  puts "No"
end
