s = gets.chomp

target = []

while idx = s.index(/((01)|(10))+/) do
  target << s.slice!(idx, 2)
end

puts target.count * 2