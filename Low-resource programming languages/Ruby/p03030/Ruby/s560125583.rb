n = gets.chomp.to_i
list = []
n.times do |i|
  s, p = gets.chomp.split
  p = p.to_i
  list[i] = [i+1, s, p]
end

list.sort_by!{ |ix, s, p| [s, -p] }.map!{ |ix, s, p| ix }

puts(list.join("\n"))