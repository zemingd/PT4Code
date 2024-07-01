N = gets.chomp.to_i
A = gets.chomp.split(" ").map(&:to_i)

search = 1
break_cnt = 0

A.each do |a|
  if a == search then
    search += 1
    next
  end

  break_cnt += 1
end

if search == 1 then
  puts "-1"
else
  puts break_cnt
end