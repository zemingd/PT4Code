n = gets.to_i

ary = gets.split(' ').map(&:to_i)

sorted_ary = ary.sort

diff_count = 0;

ary.each_with_index do |n, idx|
  diff_count += 1 if n != sorted_ary[idx]
  break if diff_count > 2
end

if diff_count <= 2
  puts 'YES'
else
  puts 'NO'
end
