gets
vs = gets.split.map(&:to_i)

a0 = vs[0]
b0 = vs[1]
count = 0
if a0 == b0
  b0 = vs.each_slice(2).find {|a, b| b != a0}
  b0 = vs[1] + 1 unless b0
  count = 1
end

vs[2..-1].each_slice(2) do |a, b|
  count += 1 if a != a0
  count += 1 if b && b != b0
end

puts count