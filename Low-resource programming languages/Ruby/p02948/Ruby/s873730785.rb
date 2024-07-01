n,m=gets.split(' ').map{|i| i.to_i}
jobs = []
n.times do 
  jobs<<gets.split(' ').map{|i| i.to_i}
end

jobs.sort{|a,b| b[1] <=> a[1]}


profit=0
(0...m).each do |i|
  yuuyo=m-i
  fee=0
  index=-1
  for j in 0...jobs.size
    if j[0] <= yuuyo
      index = j
      break
    end
  end
  
  if index >= 0
    profit=jobs[index][1]
    jobs.delete_at(index)
  end
end
puts profit