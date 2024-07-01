s = gets.rstrip

10.times do |i|
  if s == 'hi' * i
    puts 'Yes'
    exit
  end
end

puts 'No'