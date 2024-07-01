n = gets.chomp.to_i
a = gets.chomp.split(' ').map(&:to_i)
hash = {}
a.each do |num|
  hash[num] ? hash[num] += 1 : hash[num] = 1
end

memo = [0]
hoge = 0
for i in 1..100000 do
  memo[i] = hoge + i
  hoge += i
end

sum = 0
hash.each do |k,v|
  sum += memo[v-1]
end
puts "1"
=begin
a.each do |num|
  puts sum - (hash[num] - 1)
end
=end