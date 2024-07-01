n=gets.to_i
p=gets.split.map(&:to_i)
q=gets.split.map(&:to_i)

a=0
b=0
[*1..n].permutation.to_a.each_with_index do |perm, i|
  a=i if perm==p
  b=i if perm==q
end

puts (a-b).abs
