N,M=gets.split.map(&:to_i)
ab=[]
M.times do
  ab << gets.split.map(&:to_i).map{|x| x-1}
end
ab.sort_by!{|(a,b)| b}
bridge = -1
ans = 0
ab.each do |(a,b)|
  if bridge < a
    bridge = b-1
    ans += 1
  else
    next
  end
end
p ans