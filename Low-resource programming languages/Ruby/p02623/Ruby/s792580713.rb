n,m,k = gets.split.map(&:to_i)
a_num = gets.split.map(&:to_i)
b_num = gets.split.map(&:to_i)
result_time = 0
result_size = 0
loop do
  if a_num[0].nil? && b_num[0].nil?
    break
  elsif a_num[0].nil?
    if k >= result_time + b_num[0]
        result_time += b_num.shift
        result_size += 1
    else
      break
    end
  elsif b_num[0].nil?
    if k >= result_time + a_num[0]
        result_time += a_num.shift
        result_size += 1
    else
      break
    end
  else
    if a_num[0] <= b_num[0]
      if k >= result_time + a_num[0]
        result_time += a_num.shift
        result_size += 1
      else
        break
      end
    else
      if k >= result_time + b_num[0]
        result_time += b_num.shift
        result_size += 1
      else
        break
      end
    end
  end
end
puts result_size