s = gets.chomp.split('')
hash = Hash.new(0)
s.each do |i|
  hash[i] += 1
end
sum = 0
hash.each do |k,v|
  if k == '+'
    sum += v
  else
    k == '-'
    sum -= v
  end
end
puts sum