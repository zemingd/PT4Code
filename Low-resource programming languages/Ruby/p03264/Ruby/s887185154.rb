K = gets.to_i

count = 0
1.upto(K) do |i|
  1.upto(K) do |j|
    if i.even? && j.odd?
      count += 1
    end
  end
end

puts count