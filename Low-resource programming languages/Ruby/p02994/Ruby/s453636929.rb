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
  gap = (taste_by_all - taste_sub_list.inject(:+)).abs
  
  if before_gap.nil?
    before_gap = gap
    ans = taste_sub_list.inject(:+)
    next
  end
  
  if gap < before_gap
    ans = taste_sub_list.inject(:+)
  end
end

puts ans