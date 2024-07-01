a, b, c = gets.chomp.split.map(&:to_i)

count = 0

while !(a == b && a == c)
  count += 1
  if [a, b, c].min == a
    if a == b
      a += 1
      b += 1
    elsif a == c
      a += 1
      c += 1
    else
      a += 2
    end
  elsif [a, b, c].min == b
    if b == c
      b += 1
      c += 1
    else
      b += 2
    end
  else
    c += 2
  end
end

puts count