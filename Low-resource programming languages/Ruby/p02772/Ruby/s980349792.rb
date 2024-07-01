N = gets.to_i
A = gets.split.map(&:to_i)

denied = false
A.each do |a|
  next if a.odd?
  if a%3 != 0 && a%5 != 0
    denied = true
    break
  end
end
if denied
  puts 'DENIED'
else
  puts 'APPROVED'
end
