sy = gets.to_i

a_ary = gets.split(' ').map(&:to_i)
b_ary = gets.split(' ').map(&:to_i)
c_ary = gets.split(' ').map(&:to_i)

point = 0

sy.times do |n|
  i = a_ary[n] - 1

  point += b_ary[i]
  point += c_ary[i - 1].to_i if n != 0 && (a_ary[n] - 1) == a_ary[n - 1]
end

puts point
