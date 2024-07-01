s = readlines.map(&:to_i)[1..-1]

grouping = s.group_by { |num| num % 10 == 0 }
divisible, not_divisible = grouping[true], grouping[false]
divisible ||= [0]

if not_divisible.nil?
  puts 0
  exit
end

sum = 0

not_divisible.reverse.each do |num|
  sum += num unless (num + sum) % 10 == 0
end

if sum.zero?
  puts sum
else
  puts sum + divisible.inject(&:+)
end
