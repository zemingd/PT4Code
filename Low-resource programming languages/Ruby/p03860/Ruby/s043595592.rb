N = gets.split('')

s = N.select { |w| w.match(/[A-Z]/) }
s.delete_at(1)
p s.join