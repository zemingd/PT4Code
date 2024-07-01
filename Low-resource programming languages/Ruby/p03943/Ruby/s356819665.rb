a=gets.split.map(&:to_i)
puts a.find_index(a.sum/3.to_f) ? "Yes" : "No"
