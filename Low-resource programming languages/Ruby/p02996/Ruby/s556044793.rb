n = gets.chomp.to_i
ab = []
n.times do |i|
  ab[i] = gets.chomp.split.map(&:to_i).reverse
end
ab.sort!
m = 0
n.times do |i|
  m += ab[i][1]
  if m > ab[i][0]
    puts "No"
    exit
  end
end
puts "Yes"
