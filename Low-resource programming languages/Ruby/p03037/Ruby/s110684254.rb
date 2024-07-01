n,_=gets.split.map(&:to_i)
a = [0,n-1]
b = $<.map{|s|s.split.map &:to_i}
b.each do |m|
   a[0] = m[0]-1 if m[0]-1 > a[0] 
   a[1] = m[1]-1 if m[1]-1 < a[1] 
end

p a[1] - a[0] + 1
