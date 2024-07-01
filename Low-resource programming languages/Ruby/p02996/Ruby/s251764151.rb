n=gets.to_i
j=[]
n.times do
  a,b=gets.split.map(&:to_i)
  j << [a,b]
end
j.sort!{|j1,j2|j1[1]<=>j2[1]}
sum=0
for i in 0...n do
  sum+=j[i][0]
  if sum>j[i][1]
    puts "No"
    return 
  end
end
puts"Yes"
  