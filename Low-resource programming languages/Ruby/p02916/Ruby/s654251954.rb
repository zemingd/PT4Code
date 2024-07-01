n = gets.to_i
as = gets.split(' ').map(&:to_i)
bs = gets.split(' ').map(&:to_i)
cs = gets.split(' ').map(&:to_i)

s = 0
prev_a = nil

as.each do |a|
  s += bs[a - 1]

  if prev_a && a == prev_a + 1
    s += cs[prev_a - 1]
  end

  prev_a = a
end

puts s