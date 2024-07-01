a = ARGF.gets.split.map(&:to_i).reduce(&:+)
puts (a >= 22) ? 'bust' : 'win'
