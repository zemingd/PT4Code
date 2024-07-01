N = gets.to_i
A = gets.split.map &:to_i
puts A.map{|a| a.odd? || a % 3 == 0 || a % 5 == 0}.all? ? :APPROVED : :DENIED