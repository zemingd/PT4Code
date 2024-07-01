n = gets.chomp
3.times do |i|
  if n[i] == '9'
    n[i] = '1'
  else
    n[i] = '9'
  end
end
puts n