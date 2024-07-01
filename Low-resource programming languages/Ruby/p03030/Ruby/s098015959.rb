n = gets.to_i
list = []
n.times do |i|
  s, p = gets.split
  list[i] = { index: (i + 1), name: s, score: p.to_i }
end

list.sort_by! { |l| [l[:name], -(l[:score])] }
list.each do
  puts [:index]
end
