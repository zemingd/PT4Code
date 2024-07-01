n=gets.to_i
a=gets.split.map(&:to_i)
h=Hash.new(0)
a.each{|i|h[i]+=1}
a.each do |i|
  ans=0
  h.each do |k,c|
    c-=1 if k == i
    ans+=c*(c-1)/2
  end
  puts ans
end
