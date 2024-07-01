x, n = gets.split.map(&:to_i)
if n == 0
  puts x
  exit
end

p_arr = gets.split.map(&:to_i)

sort_arr = p_arr.sort_by { |pi| [(x - pi).abs, pi] }

p_arr.length.times do |i|
  diff = (i + 1) / 2
  expected = i % 2 == 1 ? x - diff : x + diff
  if sort_arr[i] != expected
    puts expected
    exit
  end
end

i = p_arr.length - 1
diff = (i + 1) / 2
expected = i % 2 == 1 ? x - diff : x + diff

puts expected