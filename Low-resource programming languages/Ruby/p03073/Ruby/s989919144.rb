s = $stdin.read.chomp.split("").map(&:to_i)
a = 0
b = 0

s.size.times do |i|
  if i % 2 == 0
    if s[i] == 0
      a += 1
    end
  else
    if s[i] == 0
      b += 1
    end
  end
end

puts [a,b].min