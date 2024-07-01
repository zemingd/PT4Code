s = gets.chomp.split(//).map(&:to_i)
ans0 = 0
ans1 = 0
s.each_with_index do |n, i|
  if i % 2 == 0
    ans0 += 1 if n == 1
    ans1 += 1 if n != 1
  else
    ans0 += 1 if n != 1
    ans1 += 1 if n == 1
  end
end

puts [ans0, ans1].min
