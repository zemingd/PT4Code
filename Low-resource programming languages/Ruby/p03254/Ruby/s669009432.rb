n,x=gets.strip.split.map(&:to_i)
a=gets.strip.split.map(&:to_i)
a.sort!
a.each_with_index do |v,i|
  x-=v
  if x<0
    puts i
    exit
  end
end

if x==0
  puts n
else
  puts n-1
end