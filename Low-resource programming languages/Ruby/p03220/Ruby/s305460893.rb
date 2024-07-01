
N=gets.chomp.to_i
T,A=gets.chomp.split.map(&:to_i)
H=gets.chomp.split.map(&:to_i)

a=100000
s=0
N.times do |i|
  t=((T-H[i]*0.006)-A).abs
  if t < a then
    a=t
    s=i
  end
end
puts s+1