s = gets.strip.split('').map(&:to_i)
n = s.length


sum_1 = 0

n.times do |i|
  if i.odd? && s[i] == 0
    sum_1 += 1
  elsif i.even? && s[i] == 1
    sum_1 += 1
  end
end

sum_2 = n - sum_1

sum = [sum_1,sum_2].min

puts sum