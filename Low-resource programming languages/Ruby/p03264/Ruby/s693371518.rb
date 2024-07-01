k = gets.chomp.to_i; ce = 0; co = 0
k.times do |i|
  if i%2 == 0
    ce += 1
  else
    co += 1
  end
end
puts ce * co
