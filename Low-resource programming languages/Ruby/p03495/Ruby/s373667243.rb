n, k = gets.split.map(&:to_i)
aa = gets.split.map(&:to_i)

ret = []

nums = aa.uniq
nums.each do |num|
  ret << aa.select { |a| a == num }.count
end
ret.sort!
ret.reverse!
puts ret[k, n - k]&.inject(:+) || 0
