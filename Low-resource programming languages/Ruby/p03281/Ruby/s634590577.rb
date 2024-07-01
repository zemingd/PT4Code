n = gets.to_i
count = 0
ans = 0
(1..n).each do |a|
  if a.odd?
    (1..a).each do |b|
      if (a % b) == 0
        count += 1
      end
    end
  end
  if count == 8
    ans += 1
  end
  count = 0
end

puts ans
