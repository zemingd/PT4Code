num = gets.to_i
ary = gets.split().map(&:to_i)
sorted_ary = ary.sort

diff_ary = ary.zip(sorted_ary).map{|attr| attr.first - attr.last}

diff_size = diff_ary.reject(&:zero?).size

if diff_size == 0 || diff_size == 2
  puts "YES"
else
  puts "NO"
end