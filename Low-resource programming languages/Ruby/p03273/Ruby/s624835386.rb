h,w = gets.split.map(&:to_i)
a = h.times.map{gets.chomp.split('')}

a.filter!{|l| !l.all?('.')}

remove = []
w.times do |i|
  flag = true
  a.each do |l|
    if l[i] == '#'
      flag = false
    end
  end
  if flag
    remove.push(i)
  end
end

a.each do |l|
  (0..(w-1)).to_a.filter{|i| !remove.include?(i)}.each do |i|
    print l[i]
  end
  puts ''
end