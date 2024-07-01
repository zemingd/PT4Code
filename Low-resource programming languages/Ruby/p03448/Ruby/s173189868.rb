a,b,c,x=gets.split.map(&:to_i)
ans=0
(a+1).times{|i|(b+1).times{|j|(c+1).times{|k|ans+=1 if 500+i+100*j+50*k==x}}}
p ans