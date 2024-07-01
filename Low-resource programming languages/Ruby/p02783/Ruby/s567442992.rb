h, a = gets.chomp.split(' ').map(&:to_i)

atks = (h.to_f / a.to_f).ceil.to_i

puts "#{atks}"
