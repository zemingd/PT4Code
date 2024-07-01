io = STDIN
n,m=io.gets.split.map(&:to_i)
ar=io.gets.split.map(&:to_i).uniq

def lcm(ar)
  ar.inject(ar.first){|i,s|i.lcm(s)}
end

lcm=lcm(ar)

product=ar.map do |i|
  ary=(i/2).step([(lcm*1.5).to_i,m].min,i).to_a
end.inject{|s,e|s&e}
init=product==[] ? 0 : product.min
if init>0
  puts (m-init)/lcm+1
else
  puts 0
end
