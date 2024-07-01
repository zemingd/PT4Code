a,b,c = gets.split(' ').map(&:to_i)
nokori = a-b
puts c <= nokori ? 0 : c-nokori
