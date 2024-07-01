n = gets.to_i
h_ary = gets.chomp.split.map(&:to_i)
count = 1
max_h = h_ary[0]
h_ary.each_with_index do |h, i|
  next if i == 0
  if max_h <= h
    count += 1
    max_h = h
  end
end
puts count