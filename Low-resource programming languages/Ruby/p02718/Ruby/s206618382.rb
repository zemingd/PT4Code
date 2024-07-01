n,m=gets.split.map(&:to_i)
as=gets.split.map(&:to_i)
all=as.inject(:+)
ans=0
as.each{|an| ans+=1 if an>=(all*(1/(4.0*m)))}
puts ans>=m ? "Yes":"No"
