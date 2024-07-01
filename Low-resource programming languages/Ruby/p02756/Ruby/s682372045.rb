s = gets.chomp.split.map(&:to_s)
a = gets.to_i.times.map{gets.split.map(&:to_s)}

reverse = false

a.each do |_a|
  if _a[0] == '1'
    reverse = !reverse
    next
  elsif _a[1] == '1'
    if reverse
      s.push(_a[2])
    else
      s.unshift(_a[2])
    end
    next
  else _a[1] == '2'
    if reverse
      s.unshift(_a[2])
    else
      s.push(_a[2])
    end
  end
end

puts reverse ? s.reverse.join : s.join