def input
  gets.chomp.split(' ').map(&:to_i)
end

m, n = input

list = Array.new(m).map {
  a, b = input
  Array.new(a).fill(b)
 }

p list.flatten.sort.take(n).inject(&:+)