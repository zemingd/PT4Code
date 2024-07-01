n,m,k = gets.chomp.split(" ").map(&:to_i)
b_arr = gets.chomp.split(" ").map(&:to_i)
a_arr = gets.chomp.split(" ").map(&:to_i)

max_count = 0
total_time = k
count = 0
b_arr.each do |b|
  if total_time >= b
    total_time -= b
    count += 1
  else
    break
  end
end
max_count = count if count > max_count

total_time = k
a_arr.each_with_index do |a, i|
  if total_time >= a
    total_time -= a
  else
    break
  end
  tmp_total_time = total_time
  count = i + 1
  b_arr.each do |b|
    if tmp_total_time >= b
      tmp_total_time -= b
      count += 1
    else
      break
    end
  end
  max_count = count if count > max_count
end

puts max_count
