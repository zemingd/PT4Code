N = gets.to_i
D = gets.split.map(&:to_i)

if D[0] != 0
  puts 0
  exit 0
end

count_table = Hash.new { 0 }
D.each do |d|
  count_table[d] += 1
end

vn = 0
count_table.keys.sort.each do |n|
  if n != vn
    puts 0
    exit 0
  end
  vn += 1
end

if count_table[0] > 1
  puts 0
  exit 0
end

MOD = 998244353
parent_count = 1
ans = 1
count_table.size.times do |i|
  next if i == 0
  count = count_table[i]
  ans = (ans * (parent_count ** count)) % MOD
  parent_count = count
end
puts ans