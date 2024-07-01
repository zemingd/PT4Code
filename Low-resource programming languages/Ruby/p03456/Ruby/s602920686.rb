a,b=gets.split.map(&:to_s)
c=a+b
r=[]
(1..350).each do |i|
  r<< i**2
end
puts r.include?(c.to_i) ? :Yes : :No