n = gets.chomp.to_i
a = gets.chomp.split.map(&:to_i)
flag = 0


a.each do |i|
  if i % 2 == 0
    if i % 3 == 0 or i % 5 == 0
      next
    else
      flag = 1
    end
  end
end

if flag == 1
  puts 'DENIED'
else
  puts 'APPROVED'
end