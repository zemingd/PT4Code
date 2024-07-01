a,b = gets.split.map(&:to_i)
ans=0
(a..b).map(&:to_s).each do |x|
    ans+=1 if x==x.reverse
end
puts ans