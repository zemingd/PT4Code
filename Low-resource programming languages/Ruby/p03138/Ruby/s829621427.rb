io = STDIN
n,k=io.gets.split.map(&:to_i)
a=io.gets.split.map(&:to_i)
ans = 0
(1..k).each do |i|
  sum=0
  a.each do |aa|
    sum+=aa^i
  end
  ans=[ans,sum].max
end
puts ans
