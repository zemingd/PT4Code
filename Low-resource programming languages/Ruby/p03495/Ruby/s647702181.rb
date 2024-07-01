n,k = gets.split.map(&:to_i)
int = gets.split.map(&:to_i)

bucket = Array.new(20,0)

int.each do |i|
  bucket[i] += 1 if bucket[i] != nil
end

sort_b = bucket.sort.reverse
p n - sort_b[0..k-1].inject(:+)