n, m = gets.split(" ").map(&:to_i)
ary = gets.split(" ").map(&:to_i).sort.reverse
sum = ary.inject(:+)
div = sum / (4 * m).to_f
 
m.times do |i|
  if ary[i] < div
    puts "No"
    exit
  end
end
 
puts "Yes"