n,a,b = gets.split.map(&:to_i)
dis=b-a
if dis.even?
  puts (dis+1)/2
  exit
end

ans = 0
dis_l=a-1
dis_r=n-b
if dis_l < dis_r
  ans = dis_l + (dis+1)/2
else
  ans = dis_r + (dis+1)/2
end
puts ans