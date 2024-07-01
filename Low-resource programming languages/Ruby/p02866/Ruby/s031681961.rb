n=gets.to_i
d=gets.chomp.split(" ").map(&:to_i)
max=d.max
def Cal(n,i,depth)
  return n-i if i==depth
  return (n-i)*(1+Cal(n,i+1,depth))
end
flag=false
d.each_with_index do|c,i|
  flag=true if i!=0 and c.zero?
end
unless d[0].zero? and not flag
  puts 0
else 
  puts Cal(n,2,max)-max+2
end
