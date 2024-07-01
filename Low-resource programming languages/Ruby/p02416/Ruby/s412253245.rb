loop do
    s = gets.chomp
    break if s=="0"
    puts s.each_char.map(&:to_i).inject(:+)
end
