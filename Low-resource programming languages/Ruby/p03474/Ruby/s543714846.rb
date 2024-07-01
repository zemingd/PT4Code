A, B = gets.split.map(&:to_i)

gets.chomp.split('').each_with_index do |s, i|
  if (i == A && s != '-') || (i != A && !('0'..'9').include?(s))
    puts 'No'; exit
  end
end

puts 'Yes'