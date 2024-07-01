n = gets.to_i
ans = 'APPROVED'
gets.split.map(&:to_i).each do |a|
  if a.even? && a%3 !=0 && a%5 != 0
    ans = 'DENIED'
  end
end
puts ans
