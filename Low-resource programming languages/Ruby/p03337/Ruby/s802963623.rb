a = []
a = gets.split.map(&:to_i)
c=[]
c.push(a[0]+a[1])
c.push(a[0]-a[1])
c.push(a[0]*a[1])
puts c.max