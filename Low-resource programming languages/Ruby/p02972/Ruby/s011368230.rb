require 'enumerator'
N = gets.to_i
AS=gets.split.map &:to_i
ans=[0]*(N+1)
AS.unshift(0)

for i in N-N/2..N
  ans[i]=AS[i]
end

for ic in 1...N-N/2
  i=N-N/2-ic
  a_i=[0]
  j=1
  until j*i>N
    a_i << AS[j*i]
    j+=1
  end
  ans[i]=a_i.inject(:+)%2 == AS[i] ? 0 : 1
end

out=[]
for i in 1..N
  out << i if ans[i]==1
end
puts ans.inject(:+)
puts out.join(" ")
