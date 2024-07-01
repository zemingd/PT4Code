def main
  n = ARGF.gets.to_i

  chars = ARGF.gets.chars.to_a

  w_nums = 0
  s1 = chars.map.with_index do |c, i|
    if i == 0
      next 0

    elsif chars[i-1] == "W"
      w_nums += 1
    end
    w_nums
  end

  min_cnt = n-1
  e_nums = 0
  chars.each_with_index.reverse_each do |c, i|
    if i == n-1
      if s1[i] < min_cnt
        min_cnt = s1[i]
      end

    elsif chars[i+1] == "E"
      e_nums += 1
    end
    if s1[i] + e_nums < min_cnt
      min_cnt = s1[i] + e_nums
    end
  end
  puts min_cnt
end

if __FILE__ == $0
  main
end
