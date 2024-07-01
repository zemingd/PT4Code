college = Array.new(4).map { Array.new(3).map { ['', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0] } }

input = []

gets.to_i.times do
  input << gets.split(' ').map(&:to_i)
end

input.each do |e|
  b, f, r, v = e
  college[b - 1][f - 1][r] += v
end

college.each_with_index do |ary, i|
  puts ary.map{ |e| e.join(' ') }.join("\n")
  break if college.size - 1 == i
  puts '#' * 20
end