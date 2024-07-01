n,k = gets.chomp.split.map{ |item| item.to_i}
arr = gets.chomp.split.map{ |item| item.to_i}
hash = Hash.new(0)
arr.each do |i|
  hash[i] += 1
end
size = hash.size - k
arr = hash.sort{ |(k1,v1),(k2,v2)| v1 <=> v2}
ans = 0
size.times do |i|
  ans += arr[i][1]
end
print ans,"\n"
