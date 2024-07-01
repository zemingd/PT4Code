gets
L=gets.split.map(&:to_f)
puts L.max<L.inject(:+)/2 ? "Yes": "No"