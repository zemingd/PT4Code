n = gets.to_i
ans = []

(1..n).each do |i|
  count = 0
  if i % 2 == 1
    (1..i).each do |j|
      if i % j == 0
        count += 1
      end
    end
  end

  if count == 8 && (( i == n && i % 2 == 1) || (i == n - 1 && i % 2 == 0))  
    ans.push(i)
  end
end

puts ans.length
