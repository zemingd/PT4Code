N = gets.to_i
Ss = gets.split.map(&:to_s)
puts Ss.uniq.count == 3 ? 'Three' : 'Four'
