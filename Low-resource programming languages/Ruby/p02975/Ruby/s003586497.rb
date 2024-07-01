N = gets.to_i
array = gets.split(' ').map(&:to_i)

res = true
if array.any? {|a| a != 0 }
  if N % 3 != 0
    res = false
  else
    nums = {}
    array.each do |a|
      if nums[a].nil?
        nums[a] = 1
      else
        nums[a] += 1
      end
    end
    if nums.keys.length > 3 || nums.keys.length == 1
      res = false
    elsif nums.keys.length == 2
      key1, key2 = nums.keys
      count1, count2 = nums.values
      if count1 * 2 == count2 || count2 * 2 == count1
        31.times do |i|
          if key1[i] == 1 && key2[i] == 1
            res = false
            break
          end
        end
      else
        res = false
      end
    elsif nums.values.uniq.length > 1 #keys==3
      res = false
    else # keys==3
      array3 = nums.keys
      31.times do |i|
        ones = array3.map{|a| a[i]}.select{|a| a==1}.length
        # [000] [011] [101] [110] => OK
        unless ones == 0 || ones == 2
          res = false
          break
        end
      end
    end
  end
end

puts res ? 'Yes' : 'No'