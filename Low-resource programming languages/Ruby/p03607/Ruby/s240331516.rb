require 'set'

paper = Set.new

n = gets.to_i
n.times do
  a = gets.chomp
  if paper.include?(a)
    paper.delete(a)
  else
    paper.add(a)
  end
end

puts paper.size