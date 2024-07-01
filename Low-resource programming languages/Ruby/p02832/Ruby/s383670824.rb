N=gets.to_i
as=gets.split.map(&:to_i)
cnt=0
N.times do |i|
  if as[i]==cnt+1
    cnt+=1
  end
end
puts cnt==0 ? -1 : N-cnt
