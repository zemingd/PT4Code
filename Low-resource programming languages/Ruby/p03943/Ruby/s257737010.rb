S = gets.split.map(&:to_i).sort
puts S.inject(:+) == 2*S[-1] ? "Yes" : "No"