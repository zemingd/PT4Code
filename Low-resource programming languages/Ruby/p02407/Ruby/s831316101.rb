n = gets.to_f
a = gets.chomp.split " "
a.map! { |item| item.to_f }
a.sort!
a.reverse!
p a