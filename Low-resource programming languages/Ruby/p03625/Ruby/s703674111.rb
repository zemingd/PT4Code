n = gets.to_i
a = gets.chomp.split(' ').map(&:to_i).sort().reverse
longest = 0
second  = 0
update_flag = false
(0..a.length - 2).each do |i|
  break if longest != 0 && second != 0
  if update_flag
    update_flag = false
    next
  end
  if a[i] == a[i + 1]
    if longest == 0
      longest = a[i]
    else
      second = a[i]
    end
      update_flag = true
  end
end

puts longest * second