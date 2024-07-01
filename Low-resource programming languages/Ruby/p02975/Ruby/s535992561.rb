n = gets.to_i
a = gets.split.map(&:to_i)

if a.uniq.size == 1 && a.uniq[0] == 0
  puts "Yes"
  exit
end

if a.uniq.size != 3 || n % 3 != 0
  puts "No"
  exit
end

cnt = Hash.new(0)
a.each do |ai|
  cnt[ai] += 1
end

if cnt.values.uniq.count != 1
  puts "No"
  exit
end

[0, 1, 2].combination(2) do |i, j|
  i, j = j, i if i > j
  k = (3 - ((i + j) % 3)) % 3
  if a[i] ^ a[j] != a[k]
    puts "No"
    exit
  end
end

puts "Yes"
