n=gets.to_i
a=gets.split.map(&:to_i)
h=Hash.new(0)
a.each{|i|h[i]+=1}

total=0
h.each do |k,ci|
  total+=ci*(ci-1)/2
end

a.each do |i|
  puts total - h[i]*(h[i]-1)/2 + ((h[i]-1)*(h[i]-2)/2)
end