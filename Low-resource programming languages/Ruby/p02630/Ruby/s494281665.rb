n = gets.chomp.to_i
as = gets.chomp.split(' ').map(&:to_i)

aas =
  as.each_with_object({}) do |a, objects| 
    objects[a] = objects[a].to_i + 1
  end

sum = 0
aas.each do |k, v|
  sum += k * v
end
#p sum


q = gets.chomp.to_i
q.times do
  b, c = gets.chomp.split(' ').map(&:to_i)
  count = aas.delete(b)
  if count
    aas[c] = aas[c].to_i + count
    sum -= b * count
    sum += c * count
  end
  #p aas
  puts sum
end