inputs = Array.new
while line = $stdin.gets
  inputs << line.chomp
end

N, M = inputs[0].split(" ").map(&:to_i)

arrL = []
arrR = []

inputs[1..-1].each_with_index do |line, index|
  li, ri = line.split(" ").map(&:to_i)
  arrL << li
  arrR << ri
end

maxL = arrL.max
minR = arrR.min

res = minR - maxL + 1
p res