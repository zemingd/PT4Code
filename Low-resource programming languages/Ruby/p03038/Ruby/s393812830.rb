def lower_bound(array, value)
  array.bsearch_index do |x|
    x >= value
  end
end

def upper_bound(array, value)
  i = array.bsearch_index do |x|
    x >= value
  end
  if i.nil?
    array.empty? ? nil : array.size - 1
  elsif i >= 1
    i - 1
  else
    nil
  end
end

def former(array, value)
  array.bsearch do |x|
    x >= value
  end
end

def latter(array, value)
  i = array.bsearch_index do |x|
    x >= value
  end
  if i.nil?
    array.empty? ? nil : array[-1]
  elsif i >= 1
    array[i - 1]
  else
    nil
  end
end

N, M = gets.split.map(&:to_i)
a_list = gets.split.map(&:to_i).sort
bc_list = M.times.map { gets.split.map(&:to_i) }.sort_by { |(_, c)| -c }

memo = []
bc_list.each do |(b, c)|
  ub = upper_bound(a_list, c)
  if ub
    memo.push([b, c, ub])
  end
end
base_i = memo.size > 0 ? memo[0][2] : nil
unless base_i
  sum = a_list.reduce(&:+)
  puts sum
  exit 0
end

sum = 0
max = memo.size > 0 ? memo[0][2] + 1 : 0
used = 0
memo.each do |(b, c, ub)|
  break if used >= max
  next if ub + 1 - used <= 0
  count = [(ub + 1 - used), b].min
  next if count < 0
  sum += count * c
  used += count
end
a_list = a_list[(base_i - (max - used) + 1)..(a_list.size)].compact
if a_list && a_list.size > 0
  sum += a_list.reduce(&:+)
  puts sum
else
  puts sum
end

# bc_list.each do |(b, c)|
#   ub = upper_bound(a_list, c)
#   if ub
#     i = 0
#     while true
#       break if i >= b || i > ub
#       a_list[i] = c
#       i = i + 1
#     end
#     a_list.sort!
#   end
# end
# ans = a_list.reduce(&:+)
# puts ans


# bc_list.each do |(b, c)|
#   ub = upper_bound(a_list, c)
#   if ub
#     i = 0
#     while true
#       break if i >= b || i > ub
#       a_list[i] = c
#       i = i + 1
#     end
#     a_list.sort!
#   end
# end
# ans = a_list.reduce(&:+)
# puts ans
