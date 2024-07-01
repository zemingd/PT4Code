N = gets.to_i
A = gets.split.map(&:to_i)

flag = true
A.each do |n|
  next if n % 2 != 0
  if n % 3 != 0 && n % 5 != 0
    flag = false
  end
end

if flag
  puts 'APPROVED'
else
  puts 'DENIED'
end