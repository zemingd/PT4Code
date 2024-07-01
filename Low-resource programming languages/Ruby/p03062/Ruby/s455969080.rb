n = gets.to_i
an = gets.split(' ').map{|a|a.to_i}


if an.include? 0
  sum=0
  an.map{|a|a.abs}.each{|a|sum+=a}
  p sum
  exit
end

if an.size == 2
  max = an.map{|a|a.abs}.max
  min = an.map{|a|a.abs}.min
  p max - min
  exit
end

a = an.select{|a| a < 0}
if a.size%2 == 1
  min = an.map{|a|a.abs}.min
  sum=0
  an.map{|a|a.abs}.each{|a|sum+=a}
  p sum - min*2
  exit
else
  sum=0
  an.map{|a|a.abs}.each{|a|sum+=a}
  p sum
  
end