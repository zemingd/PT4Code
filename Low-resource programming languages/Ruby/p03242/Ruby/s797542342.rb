ans = gets.chomp!.split('').map! do |e|
  e.to_i == 9 ? 1 : 9
end

puts ans.join
