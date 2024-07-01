N=gets.chomp.to_i
A=gets.chomp.split.map(&:to_i)
S=A.select { |n| n % 2 == 0 }
S.each do |i|
  if i%3==0 || i%5==0
    next
  end
  puts 'DENIED'
  exit
end
puts 'APPROVED'