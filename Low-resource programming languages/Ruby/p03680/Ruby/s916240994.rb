a=[];gets.to_i.times{a<<gets.to_i};n=a[0]-1;i=0;c=[]
loop do
  c[n]==0&&(puts -1;break)||n==1&&(puts i+1;break)
  c[n],n=0,a[n]-1;i+=1
end
