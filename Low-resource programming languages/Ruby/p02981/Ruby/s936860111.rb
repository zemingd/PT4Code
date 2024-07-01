l,r= gets.chomp.split.map(&:to_i)
i = l
j = l.succ
answers = []
(l..r).each do |num|
  answers << (i * j) % 2019
  j.succ
end
puts answers.min