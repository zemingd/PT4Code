n,x=gets.split.map(&:to_i)
a=gets.split.map(&:to_i).sort
s=a.inject(&:+)
if s == x
  puts n
  exit(0)
elsif s < x
  puts n-1
  exit(0)
end

puts a.count{|a|x-=a; x>=0}