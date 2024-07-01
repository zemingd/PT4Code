n = gets.to_i
arr = gets.split.map(&:to_i)
buckets = Hash.new { 0 }

arr.each do |a|
  buckets[a-1] += 1
  buckets[a] += 1
  buckets[a+1] += 1
end

p buckets.values.max
