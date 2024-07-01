n = gets.to_i
x = gets.chomp
def func(z,zzzz)
  return (z.to_i(2))%zzzz
end
aa = Array.new(n+1)
m = x.count("1")

f = [["0",0],["1",1]]
while f.size > 0
  if f[0][1] != 0 && f[0][0].to_i(2) <= n
    b = func(f[0][0],f[0][1])
    if b == 0
      aa[f[0][0].to_i(2)-1] = 1
    else
      aa[f[0][0].to_i(2)-1] = 1+aa[b-1]
    end
  end
  f << ["0"+f[0][0],f[0][1]] if ("0"+f[0][0]).to_i(2) <= n && ("0"+f[0][0]).size < 19
  f << ["1"+f[0][0],f[0][1]+1] if ("1"+f[0][0]).to_i(2) <= n
  f.shift
end

ans = []

for j in 0..(n-1)
  if x[j] == "0"
    x[j] = "1"
    b = x.to_i(2) % (m+1)
    if b == 0
      ans << 1
    else
      ans << 1+aa[b-1]
    end
    x[j] = "0"
  else
    x[j] = "0"
    b = x.to_i(2) % (m-1)
    if b == 0
      ans << 1
    else
      ans << 1+aa[b-1]
    end
    x[j] = "1"
  end
end
puts ans