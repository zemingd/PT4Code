n = gets.to_i
a = gets.chomp.split.map &:to_i

b_push = []
b_unshift = []

a.each_with_index do |an,i|
  i.even? ? b_push << an : b_unshift.unshift(an)
end

b = b_unshift + b_push
b.reverse! if a.length.odd? 

p b.join(' ')
