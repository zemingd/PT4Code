college = Array.new(4).map { [ '0' * 10, '0' * 10, '0' * 10] }

input = []

gets.to_i.times do
  input << gets.split(' ').map(&:to_i)
end

input.each do |e|
  b, f, r, v = e
  college[b - 1][f - 1][r - 1] = (college[b - 1][f - 1][r - 1].to_i + v).to_s
end

college.each_with_index do |ary, i|
  puts ary.join("\n")
  break if college.size - 1 == i
  puts '#' * 20
end