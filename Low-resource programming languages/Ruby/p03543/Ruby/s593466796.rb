n = gets.chomp

10.times do |i|
  s = i.to_s * 3
  if n.include? s
    puts 'Yes'
    exit
  end
end

puts 'No'