n = gets().chomp.split('')

cnt = 1
n.each_with_index do |chr, i|
  next if i == 0
  if chr == n[i - 1]
    cnt += 1
    break if cnt >= 3
  else
    cnt = 0
  end
end

puts cnt >= 3 ? 'Yes' : 'No'