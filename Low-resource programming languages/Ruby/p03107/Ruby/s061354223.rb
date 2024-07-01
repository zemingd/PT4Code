s = gets.chomp!
left = s[0].chars
right = s[1, s.length-1].chars

require 'pp'

count = 0
while right.empty?.!
  if left[-1] != nil && (left[-1] != right[0])
    left.pop
    right.shift
    count += 2
  else
    left.push(right[0])
    right.shift
  end

  #puts left.join + "/" + right.join
end

puts count
