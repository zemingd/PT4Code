n,k = gets.split.map(&:to_i)
int = gets.split.map(&:to_i)

bucket = Array.new(200000,0)

int.each do |i|
  bucket[i] += 1 if bucket[i] != nil
end

sort_b = bucket.sort.reverse
p sort_b[k..-1].inject(:+)