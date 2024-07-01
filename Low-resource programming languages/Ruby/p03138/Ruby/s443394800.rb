M=40
N,K=gets.split.map(&:to_i)
A=gets.split.map(&:to_i)
f=Hash.new{|h,k|h[k]=0}
t=Hash.new{|h,k|h[k]=0}
A.each do |a|
  M.times do |i|
    a[i].zero? ? (f[i]+=1) : (t[i]+=1)
  end
end

dp0=*dp1=Array.new(M+1){0}
M.times do |i|
  c=2**i
  dp1[i+1] = c*[f[i],t[i]].max + dp1[i]
  if K[i].zero?
    dp0[i+1] = c*t[i] + dp0[i]
  else
    t0 = c*t[i] + [dp0[i],dp1[i]].max
    t1 = c*f[i] + dp0[i]
    dp0[i+1] = [t0,t1].max
  end
end
p dp0[M]
