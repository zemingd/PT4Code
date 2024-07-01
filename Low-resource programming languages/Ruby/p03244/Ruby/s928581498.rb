require 'pp'

n = gets.chomp!.to_i
v_n = gets.chomp!.split(' ').map(&:to_i)

even = v_n.select.with_index(0) {|_, i| i % 2 == 0 }.sort
odd = v_n.select.with_index(0) {|_, i| i % 2 == 1 }.sort

even_nums = {
    10 ** 6 => 0
}
odd_nums = {
    10 ** 6 => 0
}

even.each do |v|
    even_nums[v] ||= 0
    even_nums[v] += 1
end

odd.each do |v|
    odd_nums[v] ||= 0
    odd_nums[v] += 1
end

even_sorted_count = even_nums.sort{|x, y| y[1] <=> x[1]}.to_h
odd_sorted_count = odd_nums.sort{|x, y| y[1] <=> x[1]}.to_h

if even_sorted_count.first[0] != odd_sorted_count.first[0]
    puts even.length - even_sorted_count.first[1] + odd.length - odd_sorted_count.first[1]
else
    e1, v1 = even_sorted_count.first
    o2, v2 = odd_sorted_count.first
    even_sorted_count.delete(e1)
    odd_sorted_count.delete(o2)

    num1 = even.length - v1 + odd.length - odd_sorted_count.first[1]
    num2 = even.length - even_sorted_count.first[1] + odd.length - v2
    puts [num1, num2].min
end
