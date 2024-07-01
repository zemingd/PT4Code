n,k = gets.split.map(&:to_i)
arr = gets.split.map(&:to_i)
bucket = Array.new(200000){|i| i = 0}

arr.each do |a|
  bucket[a] += 1
end

sort_b = bucket.sort.reverse
p sort_b[k..-1].inject(:+)