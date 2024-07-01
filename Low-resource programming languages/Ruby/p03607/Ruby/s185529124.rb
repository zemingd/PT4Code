N = gets.to_i

paper = Array.new(10 ** 9 , false)

N.times do
  a = gets.to_i
  a -= 1
  if paper[a]
    paper[a] = false
  else
    paper[a] = true
  end
end

puts paper.count(true)