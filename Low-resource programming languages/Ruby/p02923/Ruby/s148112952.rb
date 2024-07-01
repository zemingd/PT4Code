n = gets.chomp.to_i
hs = gets.chomp.split(/\s+/).map { |e| e.to_i }


max = 0
count = 0
hs.each_with_index { |e, i|
  next if i == 0

  if hs[i-1] >= e
    count += 1
  else
    max = count if count > max
    count = 0
  end
}
max = count if count > max

puts max
