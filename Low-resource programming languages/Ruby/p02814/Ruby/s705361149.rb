io = STDIN
n,m=io.gets.split.map(&:to_i)
ar=io.gets.split.map(&:to_i)
half=ar.map{|i|i/2}
def lcm(ar)
  ar.inject(ar.first){|i,s|i.lcm(s)}
end
lcm1=lcm(ar)
lcm2=lcm(half)
if lcm1>m
  puts 0
else
  puts (m-lcm2)/lcm1+1
end
