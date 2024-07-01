n = gets.to_i
words = []
n.times do |i|
 words.push(gets.chomp)
end

ans = "Yes"
if words.length != words.uniq.length
  ans = "No"
else
  stackw = words.shift
  while words.length > 0
    next_w = words.shift
    if stackw[-1] != next_w[0]
      puts(stackw, next_w)
      ans = "No"
      break
    else
      stackw = next_w
    end
  end
end
puts(ans)