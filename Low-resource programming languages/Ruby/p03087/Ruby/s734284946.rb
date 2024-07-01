io = STDIN
n,q=io.gets.split.map(&:to_i)
str=io.gets.chomp +" "
ar=Array.new(n,0)
cnt=0
n.times do |i|
  cnt+=1 if str[i..i+1]=='AC'
  ar[i]=cnt
end
ar.unshift(0)
q.times.each do
  l,r=io.gets.split.map(&:to_i)
  p ar[r-1]-ar[l-1]
end
