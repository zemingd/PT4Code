s = gets.chomp

loop do
    if s == ''
        puts 'YES'
        exit
    end
    if s.start_with?('dreamera')
        s = s[5, s.length-1]
    elsif s.start_with?('dreamer')
        s = s[7, s.length-1]
    elsif s.start_with?('dream')
        s = s[5, s.length-1]
    elsif s.start_with?('eraser')
        s = s[6, s.length-1]
    elsif s.start_with?('erase')
        s = s[5, s.length-1]
    else
        puts 'NO'
        exit
    end
end