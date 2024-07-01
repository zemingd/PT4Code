N = gets.to_i

paper = Array.new

N.times do
  a = gets.to_i
  unless paper.delete(a)
    paper << a
  end
end

puts paper.length