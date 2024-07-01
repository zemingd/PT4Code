n, m = gets.split.map(&:to_i)
l_lim = 1
r_lim = n
m.times.each{|i|
    l, r = gets.split.map(&:to_i)
    l_lim = [l_lim, l].max
    r_lim = [r_lim, r].min
}
puts [0, r_lim - l_lim + 1].max
