n = gets.to_i
a_ary = gets.split(' ').map(&:to_i)
b_ary = gets.split(' ').map(&:to_i)

kill_count = 0

a_ary.each_with_index.reverse_each do |monster_count, idx|
  if b_ary[idx] != nil && b_ary[idx] > 0
    if b_ary[idx] >= monster_count
      b_ary[idx] -= monster_count
      kill_count += monster_count
      next
    else
      kill_count += b_ary[idx]
      monster_count -= b_ary[idx]
    end
  end

  if idx != 0 && b_ary[idx - 1] != nil && b_ary[idx - 1] > 0
    if b_ary[idx - 1] >= monster_count
      b_ary[idx - 1] -= monster_count
      kill_count += monster_count
      next
    else
      kill_count += b_ary[idx - 1]
      monster_count -= b_ary[idx - 1]
    end
  end
end

puts kill_count
