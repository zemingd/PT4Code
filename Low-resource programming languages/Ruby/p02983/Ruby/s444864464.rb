l,r= gets.chomp.split.map(&:to_i)
i = l
j = l.succ
answers = []
answers << (i * j) % 2019
(j..r).each do |num|
  next if num <= 2019
  answers << (i * num) % 2019
end
puts answers.min