n = gets.chomp.to_i
s = gets.chomp

s_2 = s.gsub(/^\.+/, '').gsub(/#+$/, '')

white, black = s_2.count('.'), s_2.count('#')


if white <= black
    puts white
else
    puts black
end

