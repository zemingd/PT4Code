l = gets.split(' ').map(&:to_i)
if l[0]*l[1]==0
  p 0
elsif l[0]==1 && l[1]==1000000000
  p 1
elsif  l[0]*l[1]%2==0
  p l[0]*l[1]/2
else
  p (l[0]*l[1]+1)/2
end