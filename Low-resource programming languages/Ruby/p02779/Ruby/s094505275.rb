n = gets.to_i
a = gets.split.map(&:to_i)

a_sum= a.size

a_uniq = a.uniq


puts a_sum == a_uniq ? "Yes": "No"
