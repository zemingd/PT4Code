n = gets.chomp.to_i
arr = n.times.map{gets.chomp.split(" ").map(&:to_i)}

t = 0
arr.sort_by{|(a, b)| [b, -a]}.each do |(a, b)|
  t += a
  if t > b then
    puts "No"
    exit
  end
end

puts "Yes"
