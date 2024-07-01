x, n = gets.split.map(&:to_i)
if n != 0
  p = gets.split.map(&:to_i)
end
    i = 1
ans = nil

if n == 0
  puts x
elsif n != 0
  while ans == nil
    if p.include?(x - i) == false && p.include?(x + i) == false
      ans = x - i
    elsif p.include?(x - i) == false
      ans = x - i
    elsif p.include?(x + i) == false
      ans = x + i
    else i += 1
    end
  end
end

puts ans