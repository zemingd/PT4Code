YES = 'Yes'
  NO = 'No'

  gets
  a = gets.split.map(&:to_i)

  a.each_with_index do |num, i|
    next_num = a[i+1]
    break if next_num.nil?

    if num >= next_num
      a[i] = num - 1
    end
  end

  r = YES
  a.each_with_index do |num, i|
    next_num = a[i+1]
    if next_num.nil?
      print r
      break
    end
    if num > next_num
      r = NO
    end
  end
