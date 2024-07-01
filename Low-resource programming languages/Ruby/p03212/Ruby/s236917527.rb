n = gets.chomp.to_i

nums = [0, 3, 5, 7]

def to_n(s, nums)
  s.chars.map { |i| nums[i.to_i] }.join.to_i
end

count = 0
1.upto(4 ** n.to_s.length) do |i|
  s = i.to_s(4)
  break if to_n(s, nums) > n
  next if s.include?('0')
  next unless s.include?('1') && s.include?('2') && s.include?('3')
  count += 1
end
puts count
