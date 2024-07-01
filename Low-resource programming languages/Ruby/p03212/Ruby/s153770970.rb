a=gets.chomp.to_i
if a < 357
  puts 0
else
  l = a.to_s.length - 3
  c_ary = [[3,5,7]]
  d_ary = [3, 5, 7]
  l.times do |i|
    i += 1
    [3,5,7].repeated_permutation(i){ |n| c_ary << (d_ary + n) }
  end
  n_ary = []
c_ary.each do |c|
  n_ary << c.permutation.map { |n| n.join.to_i}
end
n_ary = n_ary.flatten.uniq
ans_ary = n_ary.select { |n| n < a }
puts ans_ary.size
end