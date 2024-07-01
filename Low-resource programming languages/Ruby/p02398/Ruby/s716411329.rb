a, b, c = gets.split.map &:to_i 
p [*a..b].map { |e| c % e == 0 ? 1 : 0 }.reduce(:+)