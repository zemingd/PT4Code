s = readlines.map(&:to_i)[1..-1]

grouping = s.group_by { |num| num % 10 == 0 }
divisible, not_divisible = grouping[true], grouping[false]

if not_divisible.nil?
  puts 0
  exit
end

max_num = 0
not_divisible_length = not_divisible.length
not_divisible_length.times do |i|
  not_divisible.sort_by { |num| -num }.combination(not_divisible_length - i).each do |nums|
    if nums.length == 1
      max_num = nums.first
      break
    end

    sum = nums.inject(&:+)
    if sum % 10 != 0 && sum > max_num
      max_num = sum
      break
    end
  end
end

if max_num.zero?
  puts 0
else
  puts max_num + divisible.inject(&:+)
end
