num = gets.split.map(&:to_i)
five = 0
seven = 0
num.each do |x|
  if x == 5
    five += 1
  elsif x == 7
    seven += 1
  end
end

puts five == 2 && seven == 1 ? 'YES' : 'NO'