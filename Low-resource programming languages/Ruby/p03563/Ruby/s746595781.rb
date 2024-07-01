n = gets.to_i
t = gets.split.map(&:to_f)
v = gets.split.map(&:to_f)
t << 0
t.unshift(0)
v << 0
v.unshift(0)
vlast=[0]

cnt=0
ans=0
pattern=""

for i in 1..n
  pattern="a" if v[i]<=v[i+1]
  pattern="b" if v[i]>v[i+1]

  vlast_b = vlast[i-1]+t[i]
  vlast << vlast_b if pattern=="a" && vlast_b <= v[i]
  vlast << v[i] if pattern=="a" && vlast_b > v[i]

  cnt= (vlast[i-1]+vlast[i])*t[i]/2 if pattern=="a" && vlast_b <= v[i]
  cnt= (v[i]*t[i] - (v[i]-vlast[i-1])**2) /2 if pattern=="a" && vlast_b > v[i]

  vmax=(t[i]+v[i+1]+vlast[i-1])/2
  vmax_t=(t[i]+v[i+1]-vlast[i-1])/2
  vlast << v[i+1] if pattern=="b"

  cnt = vmax*t[i] -(((vmax-vlast[i-1])*vmax_t/2) + (vmax-vlast[i])*(t[i]-vmax_t)/2)   if pattern="b" && vmax<=v[i]
  cnt = v[i]*t[i] -((v[i]-vlast[i-1])**2/2+(v[i]-vlast[i])**2/2) if pattern="b" && vmax>v[i]
  ans += cnt

end
puts ans
