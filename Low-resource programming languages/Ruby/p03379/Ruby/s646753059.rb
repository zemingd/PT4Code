N = gets.chomp.to_i
nums = gets.chomp.split(' ').map(&:to_i)
sorted = nums.sort
a = sorted.clone
pre_del = a.pop
pre_med = a[(a.count + 1)/2 - 1]
pre_med_index = (a.count + 1)/2 - 1
for i in 1..N do
  a = sorted.clone
  delete = nums[i - 1]
    if delete > pre_med
      if pre_del >= pre_med
        puts pre_med
        pre_del = delete
        next
      end

      if pre_del < pre_med
        puts a[pre_med_index + 1]
        pre_med = a[pre_med_index + 1]
        pre_med_index += 1
        pre_del = delete
        next
      end
    end

    if delete < pre_med
      if pre_del <= pre_med
        puts pre_med
        pre_del = delete
        next
      end

      if pre_del > premed
        puts a[pre_med_index - 1]
        pre_med = a[pre_med_index - 1]
        pre_med_index -= 1
        pre_del = delete
        next
      end
    end

  # if deleted.has_key? delete
  #   puts deleted[delete]
  #   break
  # end
  # a.each_with_index do |val, index|
  #   if val == delete
  #     a.delete_at index
  #     break
  #   end
  # end
  # # deleted[delete.to_s] = a[(a.count + 1)/2 - 1]
  # pre_del = delete
  # pre_med = a[(a.count + 1)/2 - 1]
  # pre_med_index = (a.count + 1)/2 - 1
  # puts a[(a.count + 1)/2 - 1]
end
