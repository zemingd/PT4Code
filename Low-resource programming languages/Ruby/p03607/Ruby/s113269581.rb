n = gets.chomp.to_i

paper = []

n.times do
  a = gets.chomp
  if paper.include?(a)
    paper.delete(a)
  else
    paper << a
  end
end

puts paper.length
