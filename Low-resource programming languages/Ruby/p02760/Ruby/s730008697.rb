
def gli
  gets.split.map(&:to_i)
end

q = []
q << gli
q << gli
q << gli
q << [q[0][0], q[1][0], q[2][0]]
q << [q[0][1], q[1][1], q[2][1]]
q << [q[0][2], q[1][2], q[2][2]]
q << [q[0][0], q[1][1], q[2][2]]
q << [q[0][2], q[1][1], q[2][0]]

n = gets.to_i

w = []
n.times {
  w << gets.to_i
}
flag = false
q.each { |aa|
  flag = true if (aa - w).empty?
}

puts flag ? :Yes : :No
