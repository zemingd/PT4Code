n, k=gets.split.map(&:to_i)
a=gets.split.map(&:to_i)

freq=Array.new(n+1){0}
a.each{|e| freq[e]+=1}
li=[]
freq.each{|e| li.push(e)}
li=li.sort
tot=0
while li.size>k
  tot+=li.shift
end
puts tot