ans = []
gets.chomp.chars.each{|s|
  ans.pop if s == 'B' && !ans.empty?
  ans.push(s) if ['0', '1'].include?(s)
}

puts ans.join
