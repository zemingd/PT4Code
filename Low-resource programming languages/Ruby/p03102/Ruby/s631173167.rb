n,m,c = gets.chomp.split(" ").map{|i|i = i.to_i}
b = gets.chomp.split(" ").map{|i|i = i.to_i}
a = []
count = 0
n.times do|i|
  a = gets.chomp.split(" ").map{|ii|ii = ii.to_i}
  sum = c
  m.times do|j|
    sum+=a[j]*b[j]
  end
  if sum>0 then count+=1 end
end
puts count




