gets
p_arr = gets.split.map(&:to_i)

puts p_arr.each_cons(3).count { |e|
  !((e[0]< e[1] && e[2] < e[1]) || (e[0] > e[1] && e[2] > e[1]))
}