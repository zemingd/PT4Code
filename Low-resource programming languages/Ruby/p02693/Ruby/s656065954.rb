io = STDIN
k=io.gets.to_i
a,b=io.gets.split.map(&:to_i)
n=a/k
ans=nil
while !ans
  if (a..b).include?(n*k)
    ans='OK'
  elsif b<n*k
    ans='NG'
  end
  n+=1
end
puts ans
