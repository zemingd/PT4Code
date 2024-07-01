s = gets.chomp.chars

tmp1 = 0

s.each.with_index(1) do |c,i|
  if i.odd?
    if c != "1"
      tmp1 += 1
    end
  else
    if c != "0"
      tmp1 += 1
    end
  end
end

tmp2 = 0

s.each.with_index(1) do |c,i|
  if i.odd?
    if c != "0"
      tmp2 += 1
    end
  else
    if c != "1"
      tmp2 += 1
    end
  end
end

ans = [tmp1, tmp2].min

puts ans
