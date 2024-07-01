a,b,c,d=gets.split.map(&:to_i)
loop do
  c-=a
  break if c<=0
  a-=d
  break if a<=0
end
puts c<=0?'Yes':'No'
