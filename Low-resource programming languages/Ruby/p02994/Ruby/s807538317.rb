N, L = gets.split.map(&:to_i)
taste_list = []

(1..N).each do |i|
  taste_list << L + i - 1
end

taste_by_all = taste_list.inject(:+)

ans = nil
before_gap = nil
N.times do |n|
  taste_sub_list = (n == 0 ? [] : taste_list[0..(n-1)]) + taste_list[(n+1)..-1]
  sub_sum = taste_sub_list.inject(:+)
  gap = (taste_by_all - sub_sum).abs
  
  if before_gap.nil?
    before_gap = gap
    ans = sub_sum
    next
  end
  
  if gap < before_gap
    ans = sub_sum
  end
  before_gap = gap
end

puts ans