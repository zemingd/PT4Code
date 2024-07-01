n = gets.to_i
array = gets.split.map(&:to_i)
ans = 'APPROVED'

array.each do |i|
  if i.even?
    unless i % 3 == 0 || i % 5 == 0
      ans = 'DENIED'
    end
  end
end

puts ans