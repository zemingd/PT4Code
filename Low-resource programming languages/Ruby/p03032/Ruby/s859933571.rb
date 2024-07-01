#N=gets.to_i
#S=gets.chomp
#A=(0...N).map{gets.to_i}
#sum=A.inject(&:+)
#B=gets.split.map(&:to_i)
 
N,K=gets.split.map(&:to_i)
V=gets.split.map(&:to_i)
R=[N,K].min

G1=[]
temp=[]
G1 << temp.dup
(R+1).times do |i|
  temp << V[i]
  G1 << temp.dup
end

G2=[]
temp=[]
G2 << temp.sort
(R+1).times do |i|
  temp << V[-i-1]
  G2 << temp.dup
end

max=0
(R+1).times do |i|
  (R+1).times do |j|
    next if i+j>R
    vs=([0]+G1[i]+G2[j]).sort
    sum=vs.inject(:+)
    (K-(i+j)).times do
      if vs.size>0 && vs[0]<0
        v=vs.shift
        sum-=v
      end
    end
    #p [i,j,sum]
    max=sum if sum>max
  end
end
p max