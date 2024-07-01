n = gets.to_i
as = gets.chomp.split.map(&:to_i)
bs = gets.chomp.split.map(&:to_i)
cs = gets.chomp.split.map(&:to_i)

present = as[0]
sum = 0
as.each do |a|
  a -= 1
  sum += bs[a]
  if a == present + 1
    sum += cs[present]
  end
  present = a 
end
puts sum