n,k = gets.chomp.split.map(&:to_i)
array = Array.new
hash = Hash.new
n.times do |i|
  a,b = gets.split.map(&:to_i)
  array.push(a)
  hash[a] = hash[a].to_i + b
end

array.uniq!
array.sort!
cnt = 0
array.size.times do |j|
  cnt += hash[array[j]]
  if cnt >= k then
    puts array[j]
    exit
  end
end