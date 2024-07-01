N=gets.to_i
sn=Math.sqrt(N)
h=Hash.new(0)
[*1..sn-1].repeated_combination(3).to_a.each do |x,y,z|
  r=x**2+y**2+z**2+x*y+y*z+z*x
  next if r > N
  l = case [x,y,z].uniq.size
  when 1
    1
  when 2
    3
  when 3
    6
  end
  h[r]+=l 
end
#p h
N.times do |i|
  p h[i+1]
end