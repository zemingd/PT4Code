gets
*a = gets.chomp.split.map(&:to_i).sort { |a, b| b <=> a }
before = 0
count = 0
v = 0
h = 0

a.each do |x|
  if before == x
    count += 1
  else
    count = 1
    before = x
  end

  if count >= 2
    h = v
    v = x
    count -= 2
  end
  break if !h.zero? && !v.zero?
end

puts h * v
