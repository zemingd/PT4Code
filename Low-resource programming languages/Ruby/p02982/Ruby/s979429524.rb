# Your code here!
input=gets.split(" ")
N=input[0].to_i
D=input[1].to_i
X=[]
for i in 0..N-1
 X[i]=gets.split(" ")
end
for i in 0..N-1
 for j in 0..D-1
  X[i][j]=X[i][j].to_i
 end
end

comb=N*(N-1)/2


#点0と点２の距離を測る実験
sig=[]
sum=[]
for i in 0..comb-1
 sum[i]=0
end

pre_sum = Array.new(N).map{Array.new(N,0)}

for h in 0..N-1
 for i in 0..N-1
  pre_sum[h][i]=0
 end
end
 L=N
 for h in 0..N-1
 for i in 0..L-1
  for j in 0..D-1#次元数ループ
   sig[j]=(X[h][j]-X[i][j])*(X[h][j]-X[i][j])
   pre_sum[h][i]=pre_sum[h][i]+sig[j]
  end
 end
 end
 pre_count=0
 for h in 0..N-1
 for i in 0..L-1
 if Math.sqrt(pre_sum[h][i])==Math.sqrt(pre_sum[h][i]).to_i && Math.sqrt(pre_sum[h][i])!=0
     pre_count=pre_count+1
 end
 end
 end
 count=pre_count/2
 puts(count)
 
