A = gets.split.map(&:to_i)
puts A.inject(:+) > 21 ? :bust : :win