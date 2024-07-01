n, m = gets.chomp.split(' ').map(&:to_i)
cards = gets.chomp.split(' ').map(&:to_i)

change_times = 0
all_nums = cards
m.times do |i|
  b, c = gets.chomp.split(' ').map(&:to_i)
  b.times {|j| all_nums << c }
end

sorted_num = all_nums.sort

last = sorted_num.size - 1
first = last - n + 1
print sorted_num[first..last].inject(&:+)
