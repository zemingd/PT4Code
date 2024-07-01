a,b,c,d = gets.split.map(&:to_i)
if a || c != 0
  while a > 0
    a -= d
  end
  while c > 0
    c -= b
  end
end

puts a != 0 ? 'Yes':'No'