L,R=gets.chomp.split.map(&:to_i)
s=[]
L.upto([L+2019**2,R].min) do |i|
  s << i % 2019
end
s.sort!
puts s[0]*s[1]
