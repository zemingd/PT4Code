n = gets.to_i
a = gets.split.map(&:to_i)

a.sort!

c = []
count = 0

a.each.with_index do |m, i|
  if c.bsearch_index{|j| m % j == 0 ? 0 : -1} || c.bsearch_index{|j| m % j == 0 ? 0 : 1}
  elsif a[i+1] == m
    c << m
  else
    count += 1
    c << m
  end
end

puts count


