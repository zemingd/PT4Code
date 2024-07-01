N = gets.to_i
as = gets.chomp.split.map(&:to_i)

dir = as.count.even?
if dir
  puts((as.select(&:even?).reverse + as.select(&:odd?)).join(' '))
else
  puts((as.select(&:odd?).reverse + as.select(&:even?)).join(' '))
end