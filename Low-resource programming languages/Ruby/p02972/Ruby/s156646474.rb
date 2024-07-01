items = gets.to_i

arry = gets.split(' ').map(&:to_i)

b = nil
arry.each_with_index do |a, idx|
  b = false

  # i 個目の箱
  idx += 1
  target_idx = []
  items.times { |t_idx| target_idx << t_idx if (t_idx + 1) % idx == 0 }

  # if a == 1
  #   valid_arry = target_idx.map { |t_idx| arry[t_idx] if arry[t_idx] == 1 }.compact
  #   sum = valid_arry.reduce(:+)
  #   if sum != nil && sum % 2 == a
  #     puts valid_arry.size
  #     puts valid_arry.each_with_index.map { |_, t_idx| t_idx + 1 }.join(' ') if a == 1
  #     break;
  #   end
  # else
  #   valid_arry = target_idx.map { |t_idx| arry[t_idx] if arry[t_idx] == 0 }.compact
  #   sum = valid_arry.reduce(:+)
  #   if sum != nil && sum % 2 == a
  #     puts 0
  #     break
  #   end
  # end

  valid_arry = target_idx.map { |t_idx| arry[t_idx] if arry[t_idx] == 1 }.compact
  sum = valid_arry.reduce(:+)
  sum = 0 if sum == nil
  if sum % 2 == a
    puts valid_arry.size
    puts valid_arry.each_with_index.map { |_, t_idx| t_idx + 1 }.join(' ') if a == 1
    break;
  end

  b = true
end

puts '-1' if b
