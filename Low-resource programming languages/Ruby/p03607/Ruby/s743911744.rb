N = gets.to_i

#paper = Array.new
paper = Hash.new { |a, b| a[b] = [] }
N.times do
  a = gets.to_i
  unless paper.delete(a)
    paper[a] << a
  end
end

puts paper.count{ |a,b| b.count.odd? }