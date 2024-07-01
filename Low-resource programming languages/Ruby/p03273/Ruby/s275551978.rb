h,w = gets.split.map(&:to_i)
a = h.times.map{gets.chomp.split('')}

remove_h = []
a.each_with_index do |l, i|
  remove_h.push(i) if l.all?('.')
end

remove_w = []
w.times do |i|
  flag = true
  a.each do |l|
    if l[i] == '#'
      flag = false
    end
  end
  if flag
    remove_w.push(i)
  end
end

a.each_with_index do |l,i|
  next if remove_h.include?(i)
  (0..(w-1)).each do |j|
    next if remove_w.include?(j)
    print l[j]
  end
  puts ''
end