i=0
sum=0
kazu=Array.new

n=gets.to_i
n.times{
   kazu[i]=gets.to_i
   sum+=kazu[i]
   i+=1
}

puts sum