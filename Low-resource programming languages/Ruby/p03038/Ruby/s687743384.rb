inputs = Array.new
while line = $stdin.gets
  inputs << line.chomp
end

N, M = inputs[0].split(" ").map(&:to_i)

arrA = inputs[1].split(" ").map(&:to_i)

arrA.sort!

M.times do |i|
  b, c = inputs[i+2].split(" ").map(&:to_i)
  a_index = 0
  while a_index < b && arrA[a_index] < c
    arrA[a_index] = c
    a_index += 1
  end
  arrA.sort!
end

puts arrA.reduce(&:+)
