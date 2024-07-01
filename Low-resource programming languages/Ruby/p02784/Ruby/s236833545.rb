n,h = gets.split.map(&:to_i)
as = = gets.split.map(&:to_i)
as.each |a| do
  h -= a
end

if h <= 0
  puts "Yes"

else
  puts "No"
end