nk = gets.split.map(&:to_i)
s = gets.chomp
s_run = []
l = s.length
count = 0
c_max = 0
c_flag = 0

# for i in 0 .. l - 1
#   if s[i] == "1" && c_flag == nk[1] - 1
#     count += 1
#     if count > c_max
#       c_max = count
#     end
#     count = 1
#     c_flag = 0
#   elsif s[i] == "1"
#     count += 1
#     c_flag += 1
#   elsif s[i] == "0"
#     count += 1
#   end
# end

s_run_index = 0

if s[0] == "0"
  s_run[0] = [1,0]
  s_run_index = 1
  for i in 0 .. l - 1
    if i == 0
      
    elsif s[i] == "0" && s[i - 1] == "1"
      s_run[s_run_index] = [1,count]
      s_run_index += 1
      count = 0
    end
    if s[i] == "1" && s[i - 1] == "0"
      s_run[s_run_index] = [0,count]
      s_run_index += 1
      count = 0
    end
    count += 1
  end
  if count > 0
    s_run[s_run_index] = [s[l - 1].to_i, count]
  end
else
  for i in 0 .. l - 1
    if i == 0
      count += 1
    elsif s[i] == "0" && s[i - 1] == "1"
      s_run[s_run_index] = [1,count]
      s_run_index += 1
      count = 0
    end
    if s[i] == "1" && s[i - 1] == "0"
      s_run[s_run_index] = [0,count]
      s_run_index += 1
      count = 0
    end
    count += 1
  end
  if count > 0
    s_run[s_run_index] = [s[l - 1].to_i, count]
  end
end

sum_max = 0

if s_run.length < 2 * nk[1] + 1
  sum_max = s.length
else
  for i in 0 .. 2 * nk[1]
    sum_max += s_run[i][1]
    sum = sum_max
  end

  i = 2 * nk[1] + 1 
  while true
    if i + 1 >= s_run.length
        break
    end
    sum = sum - s_run[i - (2 * nk[1] + 1)][1] - s_run[i - (2 * nk[1] + 1) + 1][1] + s_run[i][1] + s_run[i + 1][1]
    if sum > sum_max
      sum_max = sum
    end
    i += 2
  end
end

puts sum_max