N=gets.to_i
S=gets.chomp
e=Array.new(N)
w=Array.new(N)
e[0]=0
w[-1]=0
(N-1).times{|i|
    e[i+1]=e[i]
    e[i+1]+=1 if S[i]=="W"
    w[-i-2]=w[-i-1]
    w[-i-2]+=1 if S[-i-1]=="E"
}
warn e.inspect
warn w.inspect
puts e.zip(w).map{|x,y|x+y}.min
