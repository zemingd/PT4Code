n = gets.chomp.to_i
a = gets.chomp.split(' ').map(&:to_i)
current = 1
kudaita = 0
a.each do |renga|
  if (renga != current)
    kudaita += 1
  else
    current += 1
  end
end
puts n == kudaita ? '-1' : kudaita