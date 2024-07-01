
s = gets.chomp

gu, ki = [], []

s.length.times do |i|
  gu << s[i].to_i if i%2 == 0
  ki << s[i].to_i if i%2 == 1
end

gu_sum = !gu.empty? ? gu.inject(&:+) : 0
ki_sum = !ki.empty? ? ki.inject(&:+) : 0

plan1 = gu.length - gu_sum + ki_sum
plan2 = ki.length - ki_sum + gu_sum

ans = [plan1, plan2].min


puts ans