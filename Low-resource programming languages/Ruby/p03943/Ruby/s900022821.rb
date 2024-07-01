a=gets.split.map &:to_i
puts a.inject(:+)==a.max*2 ? "Yes" : "No"