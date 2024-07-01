s = gets.chomp
_ = gets.chomp.to_i
r = 0
ar = [s]
#n.times{
while line=gets
#  t,f,c = gets.chomp.split(" ")
  t,f,c = line.chomp.split(" ")
  t = t.to_i
  if t == 1
    r = 1 - r
  else
    f = f.to_i
    if (r+f) % 2 == 0
      ar.push(c)
    else
      ar.unshift(c)
    end
  end
#}
end
if r == 0
  puts ar.join("")
elsif r == 1
  puts ar.reverse.join("")
else
  raise
end