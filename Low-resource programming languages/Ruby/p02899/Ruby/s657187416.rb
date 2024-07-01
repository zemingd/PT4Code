n = gets.to_i
h={}
s=gets.split.map(&:to_i)
n.times do |i|
  h[i]=s[i]
end

ans=[]
ans<< h.sort_by{ |_, v| v }.map{|s|s[0]+1}
puts ans.join(' ')

