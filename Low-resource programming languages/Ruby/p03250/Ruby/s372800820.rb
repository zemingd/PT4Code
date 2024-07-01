x = gets.chomp.split.map(&:to_i)
x.sort! do |a, b|
  b <=> a
end
puts "#{x[0]}#{x[1]}".to_i + x[2]
