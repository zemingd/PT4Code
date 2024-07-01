count = gets.to_i
  a = gets.chomp.split(' ').map(&:to_i)
ans = "APPROVED"
a.each do |i|
  if i % 2 == 0 && if i % 3 != 0 && i % 5 != 0
    ans = "DENIED"
  end
end

puts ans