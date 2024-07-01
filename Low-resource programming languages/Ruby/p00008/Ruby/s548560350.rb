c = []
(0..50).each do |n|
  c[n]=[*0..9].repeated_permutation(4).count{|a|a.inject(:+)==n}
end
while n=gets.to_i
  puts c[n]
end