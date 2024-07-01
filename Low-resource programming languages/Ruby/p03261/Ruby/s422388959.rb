n = gets.to_i
hash = Hash.new(0)
check = 0
bef = gets.chomp
hash[bef] += 1
(n-1).times do
  w = gets.chomp
  hash[w] += 1
  check += 1 if bef[-1] != w[0]
  bef = w
end
hash.each do |k,v|
  check += 1 if v >= 2
end
if check > 0
  puts :No
else
  puts :Yes
end