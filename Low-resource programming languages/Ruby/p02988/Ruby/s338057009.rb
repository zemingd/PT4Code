length = gets.to_i

ary = gets.split(' ').map(&:to_i)

count = 0

ary.each_with_index do |_, idx|
  break if idx == (length - 1)

  count += 1 if (ary[idx - 1] <= ary[idx] && ary[idx + 1] >= ary[idx]) || (ary[idx - 1] >= ary[idx] && ary[idx + 1] <= ary[idx])
end

puts count