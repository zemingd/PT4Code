n = gets.chomp.to_i
a_ary = gets.chomp.split(" ").map(&:to_i)
b_ary = gets.chomp.split(" ").map(&:to_i)
c_ary = gets.chomp.split(" ").map(&:to_i)
m = 0
sum = b_ary.inject(:+)
a_ary.each.with_index do |a,i|
  next if i == 0
  if a == a_ary[i-1] +1
    ci = i-2
    ci = 0 if ci < 0
    sum += c_ary[ci]
  end
end
puts sum