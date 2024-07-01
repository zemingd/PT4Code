N = gets.to_i
nums = gets.split.map(&:to_i)
nums_uniq = nums.uniq
hash = Hash.new{|hash, key| hash[key] = 0}
nums_uniq.each do |i|
  hash[i] = nums.count(i)
end
result = nums.sum

Q = gets.to_i
Q.times{
  b, c = gets.split.map(&:to_i)
  hash[c] += hash[b]
  b_num = hash[b]
  hash.delete(b)
  result -= b*b_num
  result += c*b_num
  puts result
}