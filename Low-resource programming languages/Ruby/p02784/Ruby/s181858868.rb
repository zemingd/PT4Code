h, = gets.split("\s").map(&:to_i)
a = gets.split("\s").map(&:to_i)
p a.inject(&:+) >= h ? 'Yes' : 'No'