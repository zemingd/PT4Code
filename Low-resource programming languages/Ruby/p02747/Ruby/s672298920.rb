s = gets.chomp
n = s.length
if n % 2 != 0
  puts "No"
  return
end
n.times do |i|
  if i%2 ==0&&s[i]!="h"
    puts "No"
    return
  end
  if i%2 ==1&&s[i]!="i"
    puts "No"
    return
  end
end
puts "Yes"