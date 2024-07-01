n,k=gets.split.map(&:to_i)
ds=gets.split.map(&:to_i)
while true
  ns=n.to_s.split("").map(&:to_i)
  if ns.count{|i| ds.include?(i)}==0
    puts n
    break
  end
  n+=1
end
