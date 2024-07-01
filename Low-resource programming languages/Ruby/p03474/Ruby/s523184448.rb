a,b = gets.split.map(&:to_i)
s = gets.chomp.split('')
count = 0
check = 0
s.each do |i|
  if i == '-'
    if a == count
      count = 0
    else
      check += 1
    end
  end
  if i =~ /[0-9]/
    count += 1
  end
end
if check >= 1 || count != b
  puts :No
else
  puts :Yes
end