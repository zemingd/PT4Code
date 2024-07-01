n= gets.strip.to_i
as = gets.strip.split.map(&:to_i)
flag = false
gn = []



as.each do |a|
  if a%2 == 0
    gn.push(a)
  end
end
gn.each do |g|
  if g%3 == 0 || g%5 == 0
    flag = true
  else
    flag = false
    break
  end
end

if flag
  puts 'APPROVED'
else
  puts 'DENIED'
end
