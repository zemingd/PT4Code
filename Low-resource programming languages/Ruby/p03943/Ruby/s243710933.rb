S = gets.split.map(&:to_i).sort
puts S.sum == 2*S[-1] ? "Yes" : "No"