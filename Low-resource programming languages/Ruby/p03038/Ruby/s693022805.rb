n, m = gets.chomp.split(' ').map(&:to_i)
cards = gets.chomp.split(' ').map(&:to_i)

all_nums = []
m.times {|i| b, c = gets.chomp.split(' ').map(&:to_i); all_nums = all_nums + b.times.map {|j| c } }
all_nums = all_nums + cards
sorted_num = all_nums.sort
last = sorted_num.size - 1
first = last - n + 1
print sorted_num[first..last].sum