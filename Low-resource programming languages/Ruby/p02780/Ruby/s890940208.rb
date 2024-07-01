n,k = gets.split(' ').map(&:to_i)
nums = gets.split(' ').map(&:to_i)

aray = nums.each_cons(k).to_a
aray.delete_at(-1) unless aray[-1].size == k
aa = aray.map { |a| a.inject(:+) }
ii = aa.index(aa.max)

sum = 0

aray[ii].each do |i|
  sum += i*(i+1)/2.0 / i
end

puts sum
