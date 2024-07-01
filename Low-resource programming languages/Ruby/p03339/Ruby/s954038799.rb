n=gets.to_i; a=gets.chomp.chars
min=now=a.count('E')+(a[0]==E ? -1:0)
for i in 1...n do
  now+=(b[i-1]=='W' ? 1:0)+(b[i]=='E' ? -1:0)
  min>now&&min=now
end
puts min
