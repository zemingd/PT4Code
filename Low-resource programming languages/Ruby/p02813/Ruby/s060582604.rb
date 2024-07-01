n=gets.to_i
a=gets.chomp.split.map(&:to_i)
b=gets.chomp.split.map(&:to_i)

p=[]
1.upto(n) do |i|
  p << i
end
pp=p.permutation(n).to_a.sort

i=0
pp.each do |arr|
  break if a==arr
  i += 1
end
j=0
pp.each do |arr|
  break if b==arr
  j += 1
end
puts (i-j).abs
