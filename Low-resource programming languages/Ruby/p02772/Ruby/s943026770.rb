N = gets.chop.to_i
A = gets.chop.split(' ').map(&:to_i)

flag = true
A.each do |i|
  if i % 2 == 1
    next
  else
    if i % 3 == 0 || i % 5 == 0
      next
    else
      flag = false
      break
    end
  end
end

puts flag ? 'APPROVED' : 'DENIED'
