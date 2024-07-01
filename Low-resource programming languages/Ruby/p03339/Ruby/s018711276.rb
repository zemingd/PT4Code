io = STDIN
n=io.gets.to_i
s=io.gets.chomp.split(//)

ans=n
i=0
left=s[0...i].count("W")
right=s[i..-1].count("E")
ans=[ans,left+right].min
(1..(n-1)).each do |i|
  if s[i-1]=="W"
    left+=1
  end
  if s[i]=="E"
    right-=1
  end
  ans=[ans,left+right].min
end
puts ans
