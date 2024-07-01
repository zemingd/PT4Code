N=gets.to_i
a=gets.chomp.split.map(&:to_i)
index=1
nonflag=0
N.times do |i|
  index+=1 if a[i]==index
  nonflag=1 if a[i]==1
end

if nonflag==0
  puts -1
else
puts N-(index-1)
end