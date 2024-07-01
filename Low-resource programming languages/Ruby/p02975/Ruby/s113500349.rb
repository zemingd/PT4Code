n=gets.to_i
a=gets.split.map &:to_i
h=Hash.new 0
a.map{|x|h[x]+=1}

if h.values.all?{|v|v*3==n||v*3==n*2}
h=h.map{|k,v|[k,v/(n/3)]}
a,x=h[0]
b,y=h[1]||[0,1]
c,z=h[2]||[0,1]
puts ([a]*x+[b]*y+[c]*z).reduce(:^)==0 ? "Yes":"No"
else
puts "No"
end
