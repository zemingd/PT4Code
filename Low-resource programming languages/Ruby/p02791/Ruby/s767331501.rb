n = gets.to_i
p = gets.chomp.split().map(&:to_i)

count = 0
n.times do |i|
  list = p[i..-1]
  if not list.include?(p[i]-1)
    count += 1
  end
end

puts count