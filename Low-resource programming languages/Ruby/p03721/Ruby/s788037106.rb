n,k = gets.chomp.split(' ').map{|l| l.to_i}
ans = 0
ab = Array.new
cnt = 0
n.times do |i| 
  ab << gets.split(' ').map{|x| x.to_i}
end

ab.sort.each do |a,b|
  cnt += b
  if cnt >= k
    ans = a
    break
  end
end

p ans