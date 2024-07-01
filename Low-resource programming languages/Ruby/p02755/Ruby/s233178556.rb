a, b = gets.chomp.split.map(&:to_i)
1000.times do |i|
  if ((i + 1) * 0.08).to_i == a and ((i + 1) * 0.1).to_i == b then
    puts i+1
    exit
  end
end
puts (-1)  
