a, b = gets.split.map &:to_i
s = gets.chomp
puts s.match(/\d{#{a}}-\d{#{b}}/) ? :Yes: :No