w=gets.chomp.downcase
t=STDIN.read.split[0..-2].map(&:downcase)
puts t.count(w)