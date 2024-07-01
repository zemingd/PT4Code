N = gets.to_i
A = gets.split.map &:to_i

puts A.all?{|a|
  a.odd? || (a % 5 == 0 || a % 3 == 0)
} ? :APPROVED : :DENIED