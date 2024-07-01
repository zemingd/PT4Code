x = gets.to_i
max = 1
2.upto(10) do |j|
  2.upto(35) do |k|
    if k**j > max and k**j <= x
      max = k**j
    end
  end
end
puts max
