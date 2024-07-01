x, y, z, k = gets.chomp.split.map(&:to_i)
a_arr = gets.chomp.split.map(&:to_i)
b_arr = gets.chomp.split.map(&:to_i)
c_arr = gets.chomp.split.map(&:to_i)

ab_arr = []
a_arr.each do |a|
  b_arr.each do |b|
    ab_arr << a + b
  end
end
ab_arr.sort!.reverse!.take(k)

abc_arr = []
ab_arr.each do |ab|
  c_arr.each do |c|
    abc_arr << ab + c
  end
end
abc_arr.sort!.reverse!.take(k)

puts(abc_arr.join("\n"))