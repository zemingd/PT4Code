h,w=gets.split.map(&:to_i)
s=h.times.map{gets.chomp+?.}
s<<?.*(w+1)
flag=true
h.times{|i|w.times|j|{
  flag=false if s[i][j]==?#&&[[1,0],[0,1],[-1,0],[0,-1].all?{|x,y|s[x][y]==?.}]
}}
puts flag ? "Yes" : "No"