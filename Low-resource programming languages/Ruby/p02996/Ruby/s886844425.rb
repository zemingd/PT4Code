n = gets.to_i
abs = []
n.times do
  abs << gets.split.map(&:to_i)
end

abs.sort_by! do |ab|
  [ab[1], ab[0]]
end

current = 0
abs.each do |ab|
  current += ab[0]
  if current > ab[1]
    puts "No"
    exit
  end
end
puts "Yes"
