lines = $stdin.read
array = lines.split("\n")
 
TIME = 10**5*2+1
#TIME = 300
 
N,C = array[0].split(" ").map(&:to_i)
 
cumsum = Array.new(C).map{Array.new(TIME,0)}
 
array[1..N+1].each do |rec|
  s,t,c  = rec.split(" ").map(&:to_i)
  s,t=s*2-1,t*2     # double
  s,t,c=s-1,t-1,c-1 # 0-indexed
  cumsum[c][s] += 1
  cumsum[c][t] -= 1
end
 
ans = Array.new(TIME,0)
cumsum.each do |sum|
  for i in 1...sum.length
    sum[i] += sum[i-1]
    ans[i] += sum[i]
  end
  #p sum
  #sum
end