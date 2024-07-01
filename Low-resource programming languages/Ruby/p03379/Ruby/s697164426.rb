n = gets.chomp.to_i
x = gets.chomp.split().map(&:to_i)

sorted = x.sort

median1 = sorted[n/2-1]
median2 = sorted[n/2]

n.times do |i|
  if x[i] <= median1
    puts median2
  else
    puts median1
  end
end