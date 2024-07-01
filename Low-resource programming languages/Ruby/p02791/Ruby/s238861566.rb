n = gets.to_i
p = gets.split(' ').map(&:to_i)

mini = p[0]

count=1

 for i in 1..n-1
   if p[i]<mini
     count+=1
     mini=p[i]
   end
 end

 puts count
