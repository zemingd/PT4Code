io = STDIN
n=io.gets.to_i
s=io.gets.chomp.split(//)

left=Array.new(n,0)
right=Array.new(n,0)
(1...n).each do |i|
  left[i]=left[i-1] + (s[i-1]=="W" ? 1 : 0)
end
(n-1).downto(1) do |i|
  right[i-1]=right[i] + (s[i]=="E" ? 1 : 0)
end
ans=n
n.times do |i|
  ans=[ans,left[i]+right[i]].min
end
puts ans
