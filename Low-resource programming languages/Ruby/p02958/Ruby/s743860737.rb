n = gets.to_i
p_arr = gets.split.map(&:to_i)
reorder_cnt = 0
reo = nil
reo_af = nil

prev = p_arr[0]
n.times do |i|
  if p_arr[i] < prev
    reorder_cnt += 1
    if reorder_cnt == 1
      reo = prev
      reo_af = p_arr[i]
    elsif reorder_cnt == 2
      if reo < prev || reo_af < p_arr[i]
        puts 'NO'
        exit
      else
        prev = reo
        next
      end
    else
      puts 'NO'
      exit
    end
  end
  prev = p_arr[i]
end
puts 'YES'