# a,b,c = 3.times.map(gets.to_i)
r=gets.strip.split("").map(&:to_i)


#.inject(:+)

#cnt=0
#while as.all?(|x|x.even?) do
  # cnt=cnt.succ
# end

# ans = (1..n)
#   .map{|i|[i,j]}
#   .select{|d|a <= d[1] && d[1]<= b}
#   .inject(0){|sum,d|sum+d[0]}
cnt = 0
(0..2).each do |i|
  cnt=1 if r[i]==r[i+1]
end

puts cnt==0 ? "Good" : "Bad"
