count = gets.to_i
count.times do
  a = gets.chomp.split(' ').map(&:to_i)
end
ans = "APPROVED"
a.each do |i|
  if i % 2 == 0 && if i % 3 != 0 && i % 5 != 0
    ans = "DENIED"
  end
end

puts ans