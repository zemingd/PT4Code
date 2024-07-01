n = gets.to_i
a = []
n.times do |i|
  x,y = gets.chomp.split(" ").map(&:to_i)
  a.push([x,y])
end
a = a.sort{|a, b| a[1] <=> b[1] }
sum = 0
a.each do |x|
  sum += x[0]
  if sum > x[1]
    puts "No"
    exit
  end
end
puts "Yes"
