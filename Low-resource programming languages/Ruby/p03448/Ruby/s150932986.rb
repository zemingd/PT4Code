A, B, C ,X = 4.times.map{gets.to_i}

ans = 0
(A+1).times do |i|
  (B+1).times do |j|
    (C+1).times do |k|
      ans+=1 if 500*i + 100*j + 50*k == X
    end
  end
end

puts ans
