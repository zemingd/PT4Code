n=gets.to_i
 line=gets.split(' ').map(&:to_i)
q=gets.to_i
bc=[]
q.times do
  bc << gets.chomp.split(" ").map { |e|e.to_i  }
end
sum=line.sum
table=line.tally
bc.each do |i,j|
  sum+=table[i]*(j-i)
table[j]+=table[i]
  table[i]=0

  p sum
  end

 
