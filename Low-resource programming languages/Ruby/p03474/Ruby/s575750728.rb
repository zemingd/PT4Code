a, b = gets.split.map &:to_i
r = Regexp.new("^\\d{#{a}}-\\d{#{b}}$")
puts (gets=~r ? "Yes" : "No")