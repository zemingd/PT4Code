(0..K).each do |i|
  (0..K).each do |j|
      count += 1 if i + j <= S && S - i - j <= K
    end
  end
end
puts count