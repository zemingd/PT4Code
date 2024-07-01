n = gets.to_i
w = []

n.times do
  w.append(gets.chomp!)
end

if w.sort.uniq != w.sort
  puts 'No'
  return
end

if
  w.each_cons(2).all? {|pair| pair[0].end_with?(pair[1][0]) }
  puts 'Yes'
  return
end

puts 'No'
