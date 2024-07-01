gets.to_i
hs=gets.split.map(&:to_i)
arr=[]
cnt=0
hs.each do |h|
  arr << h
  maxa = arr.max
  if maxa==h
    cnt+=1
  end
end
puts cnt
