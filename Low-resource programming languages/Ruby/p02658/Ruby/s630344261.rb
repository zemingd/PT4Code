n = gets.to_i
a = gets.split.map(&:to_i)
if a.include?(0)
  puts 0
  exit 0
end
prod = 1
a.each do |ai|
  prod *= ai
  if prod > 1000000000000000000
    puts '-1'
    exit
  end
end
puts prod