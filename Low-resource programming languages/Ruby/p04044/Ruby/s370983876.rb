N, L = gets.chomp.split(" ").map(&:to_i)
strings = []

N.times do
    strings << gets.chomp
end

strings.sort!
puts strings.join("")
