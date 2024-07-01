N, Y = gets.strip.split(" ").map {|i| i.to_i}

result = "-1 -1 -1"
(0..N).each do |m10000|
  (0..N).each do |m5000|
    (0..N).each do |m1000|
      result = [m10000, m5000, m1000].join(" ") if (m10000 * 10000 + m5000 * 5000 + m1000 * 1000 == Y) and (m10000 + m5000 + m1000 == N)
      break if result.class == String
    end
  end
end

puts result