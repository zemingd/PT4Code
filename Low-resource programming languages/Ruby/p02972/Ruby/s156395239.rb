io = STDIN
N=io.gets.to_i
ar=io.gets.split.map(&:to_i)
ar.unshift(nil)
s=Array.new(N+1)
N.downto(1) do |i|
  cnt=0
  i.step(N,i) do |j|
    if i==j
      cnt+=ar[j]
    else
      cnt+=s[j]
    end
  end
  s[i]=cnt % 2
end
puts s.count(1)
if s.count(1)>0
  ans=[]
  (1..N).each do |i|
    ans << i if s[i]==1
  end
  puts ans.join(" ")
end
