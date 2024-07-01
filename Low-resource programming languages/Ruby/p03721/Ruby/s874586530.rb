n,k = gets.split.map(&:to_i)
array = []
hash = {}
n.times do |i|
  a,b = gets.split.map(&:to_i)
  array.push(a)
  hash[a] = hash[a].to_i + b
end

array.uniq!.sort!
cnt = 0
array.size.times do |j|
  cnt += hash[array[j]]
  if cnt >= k then
    puts array[j]
    exit
  end
end