n=gets.to_i
l=[]
a=nil
n.times do
  w=gets
  a=w[0] if a==nil
  if w[0]!=a || l.include?(w)
    puts "No"
    exit
  end
  l << w
  a=w[-2]
end
puts "Yes"