# a,b,c = 3.times.map(gets.to_i)
a,b,c,d=gets.strip.split.map(&:to_i)

#.inject(:+)

#cnt=0
#while as.all?(|x|x.even?) do
  # cnt=cnt.succ
# end

# ans = (1..n)
#   .map{|i|[i,j]}
#   .select{|d|a <= d[1] && d[1]<= b}
#   .inject(0){|sum,d|sum+

def baisu(min,max,e)
  return (max/e)-(min/e)+1
end

puts baisu(a,b,c)+baisu(a,b,d)-baisu(a,b,c * d)
