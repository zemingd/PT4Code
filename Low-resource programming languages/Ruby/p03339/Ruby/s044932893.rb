n = gets.chomp.to_i
s = gets.chomp
count_prev = 300000

n.times do |i|
  count = 0
  front = s[0..i-1]
  back = s[i+1..n-1]
  if (i-1) > 0
    count += front.count('W')
  end
  count += back.count('E')
  if count_prev > count
    count_prev = count
  end
end

puts count_prev
