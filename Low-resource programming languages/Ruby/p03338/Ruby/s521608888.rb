n = gets.to_i
s = gets.chomp
count_arr = []

n.times do |i|
  count = 0
  x_new = ''
  x = s[0..i].squeeze
  y = s[i+1..n-1].squeeze
  x.length.times do |j|
    next if x_new.include?(x[j])
    if y.include?(x[j])
      count += 1
    end
    x_new += x[j]
  end
  count_arr << count
end

puts count_arr.max