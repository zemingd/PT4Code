_=gets.to_i
a=gets.split.map(&:to_i)
h=Hash.new(0)
a.each{|i|h[i]+=1}
total=0
h.each{|k,ci|total+=ci*(ci-1)/2}
a.each{|i|puts total - h[i]*(h[i]-1)/2 + ((h[i]-1)*(h[i]-2)/2)}
