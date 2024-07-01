N = gets.to_i
A = gets.split.map(&:to_i).select{|a|a.even?}
ans = A.inject(true) do |q, a|
  q &= (a % 3).zero? || (a % 5).zero?
end
if ans
  puts 'APPROVED'
else
  puts 'DENIED'
end