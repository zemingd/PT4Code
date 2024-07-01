n = gets.chop.to_i
a = gets.chop.split.map(&:to_i)

cnt = 0
pre = 0

a.each do |i|
  if i == pre + 1
    pre = i
  else
    cnt += 1
  end
end

if cnt == 0
  puts 0
elsif cnt == n
  puts -1
else
  puts cnt
end