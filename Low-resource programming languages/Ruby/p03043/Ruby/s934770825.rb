N,K=gets.chomp.split.map(&:to_i)
a=0.0
N.times do |i|
  c=0
  j=i+1
  while K>j do
    j=j*2
    c+=1
  end
  a+=(1.0/N)*((1/2.0)**c)
end
puts a