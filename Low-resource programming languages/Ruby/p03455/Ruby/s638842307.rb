(a,b)=STDIN.read.split
x=((a+b).to_i)
puts (Math.sqrt(x).to_i**2).to_i == x ? 'Yes' : 'No'
