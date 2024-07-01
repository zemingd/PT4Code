io = STDIN
n=io.gets.chomp.to_i
s=[]
n.times do
  s<<io.gets.chomp.to_i
end
sum=s.inject(:+)
s.sort.each do |i|
  break if sum%10 != 0
  sum-=i
end
puts sum
