n,k = gets.chomp.split(' ').map(&:to_i)

a = gets.chomp.split(' ').map(&:to_i)

set = {}
a.each do |b|
  set[b.to_s] ||= 0
  set[b.to_s] +=1
end

if set.length <= k
  puts 0
  exit
end

set2 = set.sort{|(k1, v1), (k2, v2)|v1<=>v2}

count = 0
(set.length-k).times do |i|
  count+=set2[i][1]
end

puts count