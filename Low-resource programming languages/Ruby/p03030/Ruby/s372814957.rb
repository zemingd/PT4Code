n=gets.to_i
a=[]
n.times do |i|
  a<<gets.chomp.split(' ')
  a[i][1]=(a[i][1].to_i)*-1
  a[i][2]=i+1
end
a=a.sort
n.times do |i|
  puts a[i][2]
end