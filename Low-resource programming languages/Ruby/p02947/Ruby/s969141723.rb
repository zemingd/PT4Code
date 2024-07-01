N = gets.to_i
as = N.times.map{gets.strip.codepoints.sort!}
h=Hash.new
cnt=0
for i in 0...N
  if h[as[i]].nil?
    h[as[i]]=0
  else
    h[as[i]]+=1
    cnt+=h[as[i]]
  end
end
puts cnt
