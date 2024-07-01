n = gets.chomp.to_i
s = gets.chomp

white = s.gsub(/^\.+/, '').count('.')

black = s.gsub(/^\.+/, '').count('#')

if white <= black
    puts white
else
    puts black
end

