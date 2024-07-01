n = gets.chomp.to_i
s = gets.chomp

puts(s.gsub(/^\.+/, '').count('.'))