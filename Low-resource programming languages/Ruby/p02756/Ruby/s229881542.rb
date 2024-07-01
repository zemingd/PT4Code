s = gets.chomp
q = gets.to_i
r = 0
z = ["",""]

q.times{
  t,f,c = gets.split
  if t=='1'
    r = (r+1)%2
  else
    z[(r+f.to_i)%2] += c
  end
}

t = z[1].reverse + s + z[0]
t = t.reverse if r==1
puts t
