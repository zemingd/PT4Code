cube = gets.chomp.split("").map(&:to_i)
cnt0 = 0
cnt1 = 0
cube.each do |col|
  if col == 0
    cnt0 += 1
  else
    cnt1 += 1
  end
end
if cnt0 < cnt1
  puts cnt0
else
  puts cnt1
end