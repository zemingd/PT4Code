N, K = gets.split.map(&:to_i)
H = gets.split.map(&:to_i)

H.sort!.reverse!

K.times do
  H.shift
end
H.push(0)
puts H.inject(:+)