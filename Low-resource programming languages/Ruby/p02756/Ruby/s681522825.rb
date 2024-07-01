s=gets.chomp.chars
t=0
$<.map{|e|i,f,c=e.split
c ?s[-(t+f.ord&1),0]=c:t+=1}
$><<[s.reverse,s][t%2]*''