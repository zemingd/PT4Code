n=gets.chomp.to_i
ab=[]
for n in 1..n do
  ab<<gets.chomp.split(' ').map(&:to_i)
end

d=ab.sort {|a, b| a[1] <=> b[1] }
t=0
s='Yes'
for n in 0..(n-1) do
  now=d[n][0]+t
  if now > d[n][1]
    s='No'
    break
  end
  t=now
end
print("#{s}\n")