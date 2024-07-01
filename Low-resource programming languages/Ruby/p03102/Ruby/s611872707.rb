

n,m,c = gets.chomp.split(" ").map{|i|i = i.to_i}
b = gets.chomp.split(" ").map{|i|i = i.to_i}
a = []
n.times do
  a << gets.chomp.split(" ").map{|i|i = i.to_i}
end

count = 0
n.times do|i|
  sum = c
  m.times do|j|
    sum+=a[i][j]*b[j]
  end
  if sum>0 then count+=1 end
end
puts count




