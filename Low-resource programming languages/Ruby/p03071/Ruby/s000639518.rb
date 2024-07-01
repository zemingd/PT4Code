a = gets.strip.split.map(&:to_i)

sum = 0
2.times do
  m = a.max
  sum += m
  a =  a.uniq.size == 1 ? [m, m - 1] : a.map { |d| d == m ? d - 1 : d }
end
puts sum
