n,q=gets.split.map(&:to_i)
str=gets.chomp

s=Array.new(n+1){ 0 }
n.times do |i|
  if i+1<n && str[i]=="A" && str[i+1]=="C"
    s[i+1]=s[i]+1
  else
    s[i+1]=s[i]
  end
end

q.times do
  r,l=gets.split.map(&:to_i)
  r-=1
  l-=1
  puts s[r]-s[l]
end