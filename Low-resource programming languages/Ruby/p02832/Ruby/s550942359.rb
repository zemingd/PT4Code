n = gets.to_i
as = gets.chomp.split.map(&:to_i)
i = 1
cnt = 0
as.each do |a|
  if a != i
    cnt += 1
  else
    i += 1
  end
end
if cnt == n
  puts -1
else
  puts cnt
end