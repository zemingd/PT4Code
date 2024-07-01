def checkall(even, odd)
  input_ary = even + odd
  input_ary.uniq.length == 1
end
def ok?(ary)
  ary.uniq.length == 1
end
def modify(ary, count)
  data = {}
  sorted = ary.sort()
  sorted.each do |val|
    unless data.include? val
      data[val] = 1
    else
      data[val] += 1
    end
  end
  max_count_value, max_count = data.sort {|(cur_key, cur_val), (nxt_key, nxt_val)|
    cur_val <=> nxt_val
  }.reverse[0]
  count += (ary.length - max_count)
  return count
end
n = gets.chomp!.to_i
ary = gets.chomp!.split(' ').map(&:to_i)
count = 0
even = ary.select.with_index{ |_, idx| idx % 2 == 0 }
odd = ary.select.with_index{ |_, idx| idx % 2 != 0 }
if checkall(even, odd)
  count += [even.length, odd.length].min
  puts count
else
  if ok?(even) && ok?(odd)
    puts count
  elsif ok?(even)
    count += modify(odd, count)
    puts count
  elsif ok?(odd)
    count += modify(even, count)
    puts count
  else
    count += modify(odd, count)
    count = modify(even, count)
    puts count
  end
end