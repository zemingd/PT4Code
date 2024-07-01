s = readlines.map(&:to_i)[1..-1]
S = s.inject(&:+)

if (S % 10) != 0
  puts S
  exit
end

min_not_divisible_num = s.index { |num| (num % 10) != 0 }

if min_not_divisible_num.nil?
  puts 0
else
  s.delete_at(min_not_divisible_num)
  puts s.inject(&:+)
end
