a,b=gets.split.map(&:to_i)
h=Hash.new(0)
b.times do
  n,m=gets.split.map(&:to_i)
  h[n]+=1
  h[m]+=1
end
h.each {|a,b| puts b}