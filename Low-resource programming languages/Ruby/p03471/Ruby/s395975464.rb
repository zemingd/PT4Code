n, y = gets.to_s.split.map{|t|t.to_i}

y /= 1000

0.upto(y/10) do |m|
  t = y - 10 * m
  break if y < 0
  0.upto(y/5) do |g|
    s = t - 5 * g
    break if s < 0
    if n == m + g + s
      puts "#{m} #{g} #{s}"
      exit
    end
  end
end

puts "-1 -1 -1"